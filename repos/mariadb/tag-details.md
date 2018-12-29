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
-	[`mariadb:10.2.20`](#mariadb10220)
-	[`mariadb:10.2.20-bionic`](#mariadb10220-bionic)
-	[`mariadb:10.2-bionic`](#mariadb102-bionic)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.11`](#mariadb10311)
-	[`mariadb:10.3.11-bionic`](#mariadb10311-bionic)
-	[`mariadb:10.3-bionic`](#mariadb103-bionic)
-	[`mariadb:10.4`](#mariadb104)
-	[`mariadb:10.4.1`](#mariadb1041)
-	[`mariadb:10.4.1-bionic`](#mariadb1041-bionic)
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
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:00d97614a715b390b477d0c6386b9cbc9f3c2bade122d072c48335c0f0c9c8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:4a283c4db588e281d0948593e8ef6ae7a4046f6f3bb1e6f2d7b0e79b3d370c8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116042668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25723290ded561a1fe572ce0dcc9787089728e257f44563dde2d13377107611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:03:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:03:38 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:03:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:03:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:03:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:03:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:03:59 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:04:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:04:06 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 29 Dec 2018 01:04:06 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 29 Dec 2018 01:04:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:04:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:04:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:04:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:04:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:04:52 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:04:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac380bb3e4aca9864427c2fc49e02dba21887bd0b7d03a72912b0d7ea56ffb8`  
		Last Modified: Sat, 29 Dec 2018 01:07:53 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b51f3af6f50b3bf85ac909c8de07553e3372f65361f3b61f7c00d155ef2962`  
		Last Modified: Sat, 29 Dec 2018 01:07:52 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bc6faeb4ff74993febdb78bfcaca3389b38f2a8ce076db7e9dc9b01da16e84`  
		Last Modified: Sat, 29 Dec 2018 01:07:57 GMT  
		Size: 840.2 KB (840196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd52717c50a2ffc652c1b918e0f31a00278a87a878fbb54c57e21563f187afc1`  
		Last Modified: Sat, 29 Dec 2018 01:07:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2561331f43e7351f15b1eda36b8b82a0868bdc14e2b344fe225193714912cb32`  
		Last Modified: Sat, 29 Dec 2018 01:07:54 GMT  
		Size: 7.3 MB (7325494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4082dc98ee03ccaf71f1a2d72ea73e1c65902b11adc6c0a29e3d74f0bc1a1f`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 25.4 KB (25441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137895455a6de9689e7f0876664d46959e3b11f346feda1b510a164cb1fedf0b`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0d85727c2545a1784f092c97f1ad6c734b6a3f018a647b23471a24510a3194`  
		Last Modified: Sat, 29 Dec 2018 01:08:05 GMT  
		Size: 64.4 MB (64401583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ea3a11616568e5318604cc042fb8dc2f8b1e6534bf6d7fa087f498983cea24`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22041e5895b1618e08c65b5267e792ffafaf2b78dd1a230605daca4628bbb208`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bd199a1f502ee3e88142ce5c2081fd1d86de0f90d87a4c51588c1916808390f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99085176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a547a8f5c7bdf0757332281ef33bb990aec0abd5e6337ea389d135af0b3f1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:44:24 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:44:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:44:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:45:10 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:45:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:46:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:46:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:46:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:46:17 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 10:46:18 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 10:46:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:48:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:48:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:48:28 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:48:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:48:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:48:36 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:48:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74417ec4d143cb61f873f53ad0da1e5f56993a0182d4eccc62df5bd7be2a7cb`  
		Last Modified: Tue, 20 Nov 2018 10:54:00 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fede9c01a8d82b242b3f76f1ed90c11f33f0f869cf7258fbe8704f2559af3b`  
		Last Modified: Tue, 20 Nov 2018 10:53:57 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689ddca95f22219f0cbce5d3f024fa35acbca1deee1dccd080410d825fd9f7a`  
		Last Modified: Tue, 20 Nov 2018 10:53:57 GMT  
		Size: 807.4 KB (807360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca552997e700b7985910ef639cea3a8f82a8f4869c10deda59c4df5d9e18fdf`  
		Last Modified: Tue, 20 Nov 2018 10:53:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b9f05d6c04a9352d33c24e353cbed27fb059437944ef81e3b164f5dc131390`  
		Last Modified: Tue, 20 Nov 2018 10:53:58 GMT  
		Size: 6.4 MB (6402981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767d2ec45b20ab1758fa50bbae091eff10b273d67149d6393d52a32f2cdeb5b`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cc09ced906ada760cc4c2e57d7362450d14a90f73e1d4231c589b9ceb7b0a0`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79e91e33a14138de528f7d893e0954354b38320a6c0a50764c036449605f21d`  
		Last Modified: Tue, 20 Nov 2018 10:54:12 GMT  
		Size: 52.4 MB (52360253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bd64c769da337208ea2f3dff4ea6d5c235207fada228b48c7f591c97c9a7be`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c85dbbea2986586a3a989fcda9e59e613703112f22e8346bdbe5e843c28e4d`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:6e2858778b93213006c4e6c8a4ecf0d2614aedf614975e5d695226547f920374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114682290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f01179c32f92947a2e89dfaaba0cb5cd741e05fd252f309c292dca7c5521fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:40:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:40:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:40:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:40:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:40:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:41:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:41:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:41:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:41:19 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 12:41:19 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 12:41:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:42:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:42:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:42:08 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:42:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:42:09 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:42:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ec082b78ab5712a0404621f0d4b156a8b3211ae77bc3affcfea7dfc5b098f`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 2.0 KB (1982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e9861da75b31a078003e4565bca95cef17eeccef905c60c130f74e7f950b2`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65665d03ad9e9904cce1767ea36d83361f37f38a5501ea558576da3429b86698`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 819.8 KB (819834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd67caae8dee9934bba0c0127333929681774216c3ce0203fed0a65238f9fa`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aa7dacb9ea4018141e29110dd62d43c56ba6ed93b43d1a5c0e16a2057221ed`  
		Last Modified: Tue, 20 Nov 2018 12:44:07 GMT  
		Size: 7.5 MB (7451258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c88c54ea8527dc75fb152bd8b212be5e49ab127a9d64557191fb2d873f771b0`  
		Last Modified: Tue, 20 Nov 2018 12:44:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfede6a3d4df2d4b6f3e71ad04a2533efec661f7750b60a25912646b2d716cdb`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f230839be48e3909acac8b4753d4253d30722dfc06853030add88d272cafdc`  
		Last Modified: Tue, 20 Nov 2018 12:44:20 GMT  
		Size: 62.7 MB (62743347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e7aea00d4e6705badfb14cf045e99f9e51b333841acbbc475df1a36f0b14be`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cceb96a12b1b989aa7041333534dbef0ec811a8f8d25ae347f249501403c985`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a2770203c65a397ef986d8dcf02d3b8d0b5c0e68fafd2c9b8aa20eb263b635f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109368262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfd884be4ac4f42ba7ff5211ff0a9b681866af668d30cc12817061a0f8cfab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:54:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:54:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:54:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:55:13 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:55:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:56:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:56:46 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 10:56:47 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 10:56:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:59:03 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:59:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:59:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:59:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:59:12 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:59:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec583771882d2f7cf41cd17239f3a18dd0657cfd1bd1db28598b66aceabf12c`  
		Last Modified: Tue, 20 Nov 2018 11:18:10 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fbf2926d1b11c4da98d8c6cf42eb88bb2e21c4fe670ca762d9d032227c6cac`  
		Last Modified: Tue, 20 Nov 2018 11:18:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3b8fdcbaac200b8dd7b455ac10715cecdfea4bda3be34d0e7b3b0e93baa91f`  
		Last Modified: Tue, 20 Nov 2018 11:18:07 GMT  
		Size: 808.9 KB (808929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0bf065377ab71ed77235fed47bb9414d3af079abf3f51140b4bd2eaf17bcf`  
		Last Modified: Tue, 20 Nov 2018 11:18:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66a1b5e4023eac346f125458709c93e1bd080d3cbe64979c7992f896bc2fa4`  
		Last Modified: Tue, 20 Nov 2018 11:18:10 GMT  
		Size: 7.2 MB (7212094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777e07661f77a488f76008ff30e5adddd19e8c529dc1b058c5eb41b9a1171918`  
		Last Modified: Tue, 20 Nov 2018 11:18:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4133689f3e1d45af8ba632079acdf1333bcd12f8e4e037873a314a131adcaaf`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed477c188c6337480b2bdb3e5f8dc8f62476ce120419177fe9c5ea21636255bd`  
		Last Modified: Tue, 20 Nov 2018 11:18:27 GMT  
		Size: 55.6 MB (55620141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2017e75277eede1d007ec66d8e1b7159d0b3470d2d76092fae5b6dc5775b08`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57c35e126fd9eec7b75ecf480cc3b80197bf06580fbf09493f38c66916651a`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.37`

```console
$ docker pull mariadb@sha256:00d97614a715b390b477d0c6386b9cbc9f3c2bade122d072c48335c0f0c9c8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.37` - linux; amd64

```console
$ docker pull mariadb@sha256:4a283c4db588e281d0948593e8ef6ae7a4046f6f3bb1e6f2d7b0e79b3d370c8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116042668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25723290ded561a1fe572ce0dcc9787089728e257f44563dde2d13377107611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:03:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:03:38 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:03:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:03:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:03:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:03:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:03:59 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:04:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:04:06 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 29 Dec 2018 01:04:06 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 29 Dec 2018 01:04:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:04:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:04:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:04:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:04:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:04:52 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:04:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac380bb3e4aca9864427c2fc49e02dba21887bd0b7d03a72912b0d7ea56ffb8`  
		Last Modified: Sat, 29 Dec 2018 01:07:53 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b51f3af6f50b3bf85ac909c8de07553e3372f65361f3b61f7c00d155ef2962`  
		Last Modified: Sat, 29 Dec 2018 01:07:52 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bc6faeb4ff74993febdb78bfcaca3389b38f2a8ce076db7e9dc9b01da16e84`  
		Last Modified: Sat, 29 Dec 2018 01:07:57 GMT  
		Size: 840.2 KB (840196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd52717c50a2ffc652c1b918e0f31a00278a87a878fbb54c57e21563f187afc1`  
		Last Modified: Sat, 29 Dec 2018 01:07:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2561331f43e7351f15b1eda36b8b82a0868bdc14e2b344fe225193714912cb32`  
		Last Modified: Sat, 29 Dec 2018 01:07:54 GMT  
		Size: 7.3 MB (7325494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4082dc98ee03ccaf71f1a2d72ea73e1c65902b11adc6c0a29e3d74f0bc1a1f`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 25.4 KB (25441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137895455a6de9689e7f0876664d46959e3b11f346feda1b510a164cb1fedf0b`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0d85727c2545a1784f092c97f1ad6c734b6a3f018a647b23471a24510a3194`  
		Last Modified: Sat, 29 Dec 2018 01:08:05 GMT  
		Size: 64.4 MB (64401583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ea3a11616568e5318604cc042fb8dc2f8b1e6534bf6d7fa087f498983cea24`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22041e5895b1618e08c65b5267e792ffafaf2b78dd1a230605daca4628bbb208`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bd199a1f502ee3e88142ce5c2081fd1d86de0f90d87a4c51588c1916808390f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99085176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a547a8f5c7bdf0757332281ef33bb990aec0abd5e6337ea389d135af0b3f1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:44:24 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:44:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:44:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:45:10 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:45:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:46:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:46:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:46:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:46:17 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 10:46:18 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 10:46:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:48:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:48:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:48:28 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:48:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:48:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:48:36 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:48:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74417ec4d143cb61f873f53ad0da1e5f56993a0182d4eccc62df5bd7be2a7cb`  
		Last Modified: Tue, 20 Nov 2018 10:54:00 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fede9c01a8d82b242b3f76f1ed90c11f33f0f869cf7258fbe8704f2559af3b`  
		Last Modified: Tue, 20 Nov 2018 10:53:57 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689ddca95f22219f0cbce5d3f024fa35acbca1deee1dccd080410d825fd9f7a`  
		Last Modified: Tue, 20 Nov 2018 10:53:57 GMT  
		Size: 807.4 KB (807360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca552997e700b7985910ef639cea3a8f82a8f4869c10deda59c4df5d9e18fdf`  
		Last Modified: Tue, 20 Nov 2018 10:53:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b9f05d6c04a9352d33c24e353cbed27fb059437944ef81e3b164f5dc131390`  
		Last Modified: Tue, 20 Nov 2018 10:53:58 GMT  
		Size: 6.4 MB (6402981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767d2ec45b20ab1758fa50bbae091eff10b273d67149d6393d52a32f2cdeb5b`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cc09ced906ada760cc4c2e57d7362450d14a90f73e1d4231c589b9ceb7b0a0`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79e91e33a14138de528f7d893e0954354b38320a6c0a50764c036449605f21d`  
		Last Modified: Tue, 20 Nov 2018 10:54:12 GMT  
		Size: 52.4 MB (52360253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bd64c769da337208ea2f3dff4ea6d5c235207fada228b48c7f591c97c9a7be`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c85dbbea2986586a3a989fcda9e59e613703112f22e8346bdbe5e843c28e4d`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; 386

```console
$ docker pull mariadb@sha256:6e2858778b93213006c4e6c8a4ecf0d2614aedf614975e5d695226547f920374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114682290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f01179c32f92947a2e89dfaaba0cb5cd741e05fd252f309c292dca7c5521fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:40:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:40:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:40:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:40:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:40:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:41:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:41:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:41:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:41:19 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 12:41:19 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 12:41:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:42:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:42:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:42:08 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:42:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:42:09 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:42:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ec082b78ab5712a0404621f0d4b156a8b3211ae77bc3affcfea7dfc5b098f`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 2.0 KB (1982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e9861da75b31a078003e4565bca95cef17eeccef905c60c130f74e7f950b2`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65665d03ad9e9904cce1767ea36d83361f37f38a5501ea558576da3429b86698`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 819.8 KB (819834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd67caae8dee9934bba0c0127333929681774216c3ce0203fed0a65238f9fa`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aa7dacb9ea4018141e29110dd62d43c56ba6ed93b43d1a5c0e16a2057221ed`  
		Last Modified: Tue, 20 Nov 2018 12:44:07 GMT  
		Size: 7.5 MB (7451258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c88c54ea8527dc75fb152bd8b212be5e49ab127a9d64557191fb2d873f771b0`  
		Last Modified: Tue, 20 Nov 2018 12:44:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfede6a3d4df2d4b6f3e71ad04a2533efec661f7750b60a25912646b2d716cdb`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f230839be48e3909acac8b4753d4253d30722dfc06853030add88d272cafdc`  
		Last Modified: Tue, 20 Nov 2018 12:44:20 GMT  
		Size: 62.7 MB (62743347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e7aea00d4e6705badfb14cf045e99f9e51b333841acbbc475df1a36f0b14be`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cceb96a12b1b989aa7041333534dbef0ec811a8f8d25ae347f249501403c985`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a2770203c65a397ef986d8dcf02d3b8d0b5c0e68fafd2c9b8aa20eb263b635f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109368262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfd884be4ac4f42ba7ff5211ff0a9b681866af668d30cc12817061a0f8cfab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:54:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:54:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:54:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:55:13 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:55:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:56:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:56:46 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 10:56:47 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 10:56:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:59:03 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:59:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:59:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:59:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:59:12 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:59:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec583771882d2f7cf41cd17239f3a18dd0657cfd1bd1db28598b66aceabf12c`  
		Last Modified: Tue, 20 Nov 2018 11:18:10 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fbf2926d1b11c4da98d8c6cf42eb88bb2e21c4fe670ca762d9d032227c6cac`  
		Last Modified: Tue, 20 Nov 2018 11:18:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3b8fdcbaac200b8dd7b455ac10715cecdfea4bda3be34d0e7b3b0e93baa91f`  
		Last Modified: Tue, 20 Nov 2018 11:18:07 GMT  
		Size: 808.9 KB (808929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0bf065377ab71ed77235fed47bb9414d3af079abf3f51140b4bd2eaf17bcf`  
		Last Modified: Tue, 20 Nov 2018 11:18:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66a1b5e4023eac346f125458709c93e1bd080d3cbe64979c7992f896bc2fa4`  
		Last Modified: Tue, 20 Nov 2018 11:18:10 GMT  
		Size: 7.2 MB (7212094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777e07661f77a488f76008ff30e5adddd19e8c529dc1b058c5eb41b9a1171918`  
		Last Modified: Tue, 20 Nov 2018 11:18:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4133689f3e1d45af8ba632079acdf1333bcd12f8e4e037873a314a131adcaaf`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed477c188c6337480b2bdb3e5f8dc8f62476ce120419177fe9c5ea21636255bd`  
		Last Modified: Tue, 20 Nov 2018 11:18:27 GMT  
		Size: 55.6 MB (55620141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2017e75277eede1d007ec66d8e1b7159d0b3470d2d76092fae5b6dc5775b08`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57c35e126fd9eec7b75ecf480cc3b80197bf06580fbf09493f38c66916651a`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.37-xenial`

```console
$ docker pull mariadb@sha256:00d97614a715b390b477d0c6386b9cbc9f3c2bade122d072c48335c0f0c9c8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.37-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:4a283c4db588e281d0948593e8ef6ae7a4046f6f3bb1e6f2d7b0e79b3d370c8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116042668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25723290ded561a1fe572ce0dcc9787089728e257f44563dde2d13377107611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:03:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:03:38 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:03:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:03:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:03:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:03:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:03:59 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:04:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:04:06 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 29 Dec 2018 01:04:06 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 29 Dec 2018 01:04:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:04:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:04:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:04:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:04:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:04:52 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:04:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac380bb3e4aca9864427c2fc49e02dba21887bd0b7d03a72912b0d7ea56ffb8`  
		Last Modified: Sat, 29 Dec 2018 01:07:53 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b51f3af6f50b3bf85ac909c8de07553e3372f65361f3b61f7c00d155ef2962`  
		Last Modified: Sat, 29 Dec 2018 01:07:52 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bc6faeb4ff74993febdb78bfcaca3389b38f2a8ce076db7e9dc9b01da16e84`  
		Last Modified: Sat, 29 Dec 2018 01:07:57 GMT  
		Size: 840.2 KB (840196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd52717c50a2ffc652c1b918e0f31a00278a87a878fbb54c57e21563f187afc1`  
		Last Modified: Sat, 29 Dec 2018 01:07:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2561331f43e7351f15b1eda36b8b82a0868bdc14e2b344fe225193714912cb32`  
		Last Modified: Sat, 29 Dec 2018 01:07:54 GMT  
		Size: 7.3 MB (7325494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4082dc98ee03ccaf71f1a2d72ea73e1c65902b11adc6c0a29e3d74f0bc1a1f`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 25.4 KB (25441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137895455a6de9689e7f0876664d46959e3b11f346feda1b510a164cb1fedf0b`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0d85727c2545a1784f092c97f1ad6c734b6a3f018a647b23471a24510a3194`  
		Last Modified: Sat, 29 Dec 2018 01:08:05 GMT  
		Size: 64.4 MB (64401583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ea3a11616568e5318604cc042fb8dc2f8b1e6534bf6d7fa087f498983cea24`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22041e5895b1618e08c65b5267e792ffafaf2b78dd1a230605daca4628bbb208`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bd199a1f502ee3e88142ce5c2081fd1d86de0f90d87a4c51588c1916808390f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99085176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a547a8f5c7bdf0757332281ef33bb990aec0abd5e6337ea389d135af0b3f1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:44:24 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:44:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:44:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:45:10 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:45:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:46:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:46:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:46:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:46:17 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 10:46:18 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 10:46:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:48:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:48:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:48:28 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:48:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:48:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:48:36 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:48:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74417ec4d143cb61f873f53ad0da1e5f56993a0182d4eccc62df5bd7be2a7cb`  
		Last Modified: Tue, 20 Nov 2018 10:54:00 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fede9c01a8d82b242b3f76f1ed90c11f33f0f869cf7258fbe8704f2559af3b`  
		Last Modified: Tue, 20 Nov 2018 10:53:57 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689ddca95f22219f0cbce5d3f024fa35acbca1deee1dccd080410d825fd9f7a`  
		Last Modified: Tue, 20 Nov 2018 10:53:57 GMT  
		Size: 807.4 KB (807360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca552997e700b7985910ef639cea3a8f82a8f4869c10deda59c4df5d9e18fdf`  
		Last Modified: Tue, 20 Nov 2018 10:53:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b9f05d6c04a9352d33c24e353cbed27fb059437944ef81e3b164f5dc131390`  
		Last Modified: Tue, 20 Nov 2018 10:53:58 GMT  
		Size: 6.4 MB (6402981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767d2ec45b20ab1758fa50bbae091eff10b273d67149d6393d52a32f2cdeb5b`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cc09ced906ada760cc4c2e57d7362450d14a90f73e1d4231c589b9ceb7b0a0`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79e91e33a14138de528f7d893e0954354b38320a6c0a50764c036449605f21d`  
		Last Modified: Tue, 20 Nov 2018 10:54:12 GMT  
		Size: 52.4 MB (52360253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bd64c769da337208ea2f3dff4ea6d5c235207fada228b48c7f591c97c9a7be`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c85dbbea2986586a3a989fcda9e59e613703112f22e8346bdbe5e843c28e4d`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:6e2858778b93213006c4e6c8a4ecf0d2614aedf614975e5d695226547f920374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114682290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f01179c32f92947a2e89dfaaba0cb5cd741e05fd252f309c292dca7c5521fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:40:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:40:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:40:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:40:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:40:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:41:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:41:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:41:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:41:19 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 12:41:19 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 12:41:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:42:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:42:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:42:08 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:42:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:42:09 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:42:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ec082b78ab5712a0404621f0d4b156a8b3211ae77bc3affcfea7dfc5b098f`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 2.0 KB (1982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e9861da75b31a078003e4565bca95cef17eeccef905c60c130f74e7f950b2`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65665d03ad9e9904cce1767ea36d83361f37f38a5501ea558576da3429b86698`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 819.8 KB (819834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd67caae8dee9934bba0c0127333929681774216c3ce0203fed0a65238f9fa`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aa7dacb9ea4018141e29110dd62d43c56ba6ed93b43d1a5c0e16a2057221ed`  
		Last Modified: Tue, 20 Nov 2018 12:44:07 GMT  
		Size: 7.5 MB (7451258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c88c54ea8527dc75fb152bd8b212be5e49ab127a9d64557191fb2d873f771b0`  
		Last Modified: Tue, 20 Nov 2018 12:44:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfede6a3d4df2d4b6f3e71ad04a2533efec661f7750b60a25912646b2d716cdb`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f230839be48e3909acac8b4753d4253d30722dfc06853030add88d272cafdc`  
		Last Modified: Tue, 20 Nov 2018 12:44:20 GMT  
		Size: 62.7 MB (62743347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e7aea00d4e6705badfb14cf045e99f9e51b333841acbbc475df1a36f0b14be`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cceb96a12b1b989aa7041333534dbef0ec811a8f8d25ae347f249501403c985`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a2770203c65a397ef986d8dcf02d3b8d0b5c0e68fafd2c9b8aa20eb263b635f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109368262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfd884be4ac4f42ba7ff5211ff0a9b681866af668d30cc12817061a0f8cfab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:54:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:54:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:54:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:55:13 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:55:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:56:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:56:46 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 10:56:47 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 10:56:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:59:03 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:59:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:59:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:59:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:59:12 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:59:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec583771882d2f7cf41cd17239f3a18dd0657cfd1bd1db28598b66aceabf12c`  
		Last Modified: Tue, 20 Nov 2018 11:18:10 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fbf2926d1b11c4da98d8c6cf42eb88bb2e21c4fe670ca762d9d032227c6cac`  
		Last Modified: Tue, 20 Nov 2018 11:18:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3b8fdcbaac200b8dd7b455ac10715cecdfea4bda3be34d0e7b3b0e93baa91f`  
		Last Modified: Tue, 20 Nov 2018 11:18:07 GMT  
		Size: 808.9 KB (808929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0bf065377ab71ed77235fed47bb9414d3af079abf3f51140b4bd2eaf17bcf`  
		Last Modified: Tue, 20 Nov 2018 11:18:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66a1b5e4023eac346f125458709c93e1bd080d3cbe64979c7992f896bc2fa4`  
		Last Modified: Tue, 20 Nov 2018 11:18:10 GMT  
		Size: 7.2 MB (7212094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777e07661f77a488f76008ff30e5adddd19e8c529dc1b058c5eb41b9a1171918`  
		Last Modified: Tue, 20 Nov 2018 11:18:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4133689f3e1d45af8ba632079acdf1333bcd12f8e4e037873a314a131adcaaf`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed477c188c6337480b2bdb3e5f8dc8f62476ce120419177fe9c5ea21636255bd`  
		Last Modified: Tue, 20 Nov 2018 11:18:27 GMT  
		Size: 55.6 MB (55620141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2017e75277eede1d007ec66d8e1b7159d0b3470d2d76092fae5b6dc5775b08`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57c35e126fd9eec7b75ecf480cc3b80197bf06580fbf09493f38c66916651a`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:00d97614a715b390b477d0c6386b9cbc9f3c2bade122d072c48335c0f0c9c8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:4a283c4db588e281d0948593e8ef6ae7a4046f6f3bb1e6f2d7b0e79b3d370c8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116042668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25723290ded561a1fe572ce0dcc9787089728e257f44563dde2d13377107611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:03:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:03:38 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:03:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:03:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:03:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:03:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:03:59 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:04:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:04:06 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 29 Dec 2018 01:04:06 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 29 Dec 2018 01:04:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:04:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:04:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:04:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:04:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:04:52 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:04:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac380bb3e4aca9864427c2fc49e02dba21887bd0b7d03a72912b0d7ea56ffb8`  
		Last Modified: Sat, 29 Dec 2018 01:07:53 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b51f3af6f50b3bf85ac909c8de07553e3372f65361f3b61f7c00d155ef2962`  
		Last Modified: Sat, 29 Dec 2018 01:07:52 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bc6faeb4ff74993febdb78bfcaca3389b38f2a8ce076db7e9dc9b01da16e84`  
		Last Modified: Sat, 29 Dec 2018 01:07:57 GMT  
		Size: 840.2 KB (840196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd52717c50a2ffc652c1b918e0f31a00278a87a878fbb54c57e21563f187afc1`  
		Last Modified: Sat, 29 Dec 2018 01:07:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2561331f43e7351f15b1eda36b8b82a0868bdc14e2b344fe225193714912cb32`  
		Last Modified: Sat, 29 Dec 2018 01:07:54 GMT  
		Size: 7.3 MB (7325494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4082dc98ee03ccaf71f1a2d72ea73e1c65902b11adc6c0a29e3d74f0bc1a1f`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 25.4 KB (25441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137895455a6de9689e7f0876664d46959e3b11f346feda1b510a164cb1fedf0b`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0d85727c2545a1784f092c97f1ad6c734b6a3f018a647b23471a24510a3194`  
		Last Modified: Sat, 29 Dec 2018 01:08:05 GMT  
		Size: 64.4 MB (64401583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ea3a11616568e5318604cc042fb8dc2f8b1e6534bf6d7fa087f498983cea24`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22041e5895b1618e08c65b5267e792ffafaf2b78dd1a230605daca4628bbb208`  
		Last Modified: Sat, 29 Dec 2018 01:07:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bd199a1f502ee3e88142ce5c2081fd1d86de0f90d87a4c51588c1916808390f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99085176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a547a8f5c7bdf0757332281ef33bb990aec0abd5e6337ea389d135af0b3f1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:44:24 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:44:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:44:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:45:10 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:45:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:46:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:46:09 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:46:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:46:17 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 10:46:18 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 10:46:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:48:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:48:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:48:28 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:48:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:48:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:48:36 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:48:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74417ec4d143cb61f873f53ad0da1e5f56993a0182d4eccc62df5bd7be2a7cb`  
		Last Modified: Tue, 20 Nov 2018 10:54:00 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fede9c01a8d82b242b3f76f1ed90c11f33f0f869cf7258fbe8704f2559af3b`  
		Last Modified: Tue, 20 Nov 2018 10:53:57 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689ddca95f22219f0cbce5d3f024fa35acbca1deee1dccd080410d825fd9f7a`  
		Last Modified: Tue, 20 Nov 2018 10:53:57 GMT  
		Size: 807.4 KB (807360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca552997e700b7985910ef639cea3a8f82a8f4869c10deda59c4df5d9e18fdf`  
		Last Modified: Tue, 20 Nov 2018 10:53:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b9f05d6c04a9352d33c24e353cbed27fb059437944ef81e3b164f5dc131390`  
		Last Modified: Tue, 20 Nov 2018 10:53:58 GMT  
		Size: 6.4 MB (6402981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767d2ec45b20ab1758fa50bbae091eff10b273d67149d6393d52a32f2cdeb5b`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cc09ced906ada760cc4c2e57d7362450d14a90f73e1d4231c589b9ceb7b0a0`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79e91e33a14138de528f7d893e0954354b38320a6c0a50764c036449605f21d`  
		Last Modified: Tue, 20 Nov 2018 10:54:12 GMT  
		Size: 52.4 MB (52360253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bd64c769da337208ea2f3dff4ea6d5c235207fada228b48c7f591c97c9a7be`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c85dbbea2986586a3a989fcda9e59e613703112f22e8346bdbe5e843c28e4d`  
		Last Modified: Tue, 20 Nov 2018 10:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:6e2858778b93213006c4e6c8a4ecf0d2614aedf614975e5d695226547f920374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114682290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f01179c32f92947a2e89dfaaba0cb5cd741e05fd252f309c292dca7c5521fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:40:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:40:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:40:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:40:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:40:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:41:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:41:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:41:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:41:19 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 12:41:19 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 12:41:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:42:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:42:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:42:08 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:42:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:42:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:42:09 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:42:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ec082b78ab5712a0404621f0d4b156a8b3211ae77bc3affcfea7dfc5b098f`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 2.0 KB (1982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e9861da75b31a078003e4565bca95cef17eeccef905c60c130f74e7f950b2`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65665d03ad9e9904cce1767ea36d83361f37f38a5501ea558576da3429b86698`  
		Last Modified: Tue, 20 Nov 2018 12:44:05 GMT  
		Size: 819.8 KB (819834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd67caae8dee9934bba0c0127333929681774216c3ce0203fed0a65238f9fa`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aa7dacb9ea4018141e29110dd62d43c56ba6ed93b43d1a5c0e16a2057221ed`  
		Last Modified: Tue, 20 Nov 2018 12:44:07 GMT  
		Size: 7.5 MB (7451258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c88c54ea8527dc75fb152bd8b212be5e49ab127a9d64557191fb2d873f771b0`  
		Last Modified: Tue, 20 Nov 2018 12:44:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfede6a3d4df2d4b6f3e71ad04a2533efec661f7750b60a25912646b2d716cdb`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f230839be48e3909acac8b4753d4253d30722dfc06853030add88d272cafdc`  
		Last Modified: Tue, 20 Nov 2018 12:44:20 GMT  
		Size: 62.7 MB (62743347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e7aea00d4e6705badfb14cf045e99f9e51b333841acbbc475df1a36f0b14be`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cceb96a12b1b989aa7041333534dbef0ec811a8f8d25ae347f249501403c985`  
		Last Modified: Tue, 20 Nov 2018 12:44:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a2770203c65a397ef986d8dcf02d3b8d0b5c0e68fafd2c9b8aa20eb263b635f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109368262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfd884be4ac4f42ba7ff5211ff0a9b681866af668d30cc12817061a0f8cfab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:54:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:54:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:54:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:55:13 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:55:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:56:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:56:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:56:46 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 20 Nov 2018 10:56:47 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Tue, 20 Nov 2018 10:56:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:59:03 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:59:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:59:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:59:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:59:12 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:59:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec583771882d2f7cf41cd17239f3a18dd0657cfd1bd1db28598b66aceabf12c`  
		Last Modified: Tue, 20 Nov 2018 11:18:10 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fbf2926d1b11c4da98d8c6cf42eb88bb2e21c4fe670ca762d9d032227c6cac`  
		Last Modified: Tue, 20 Nov 2018 11:18:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3b8fdcbaac200b8dd7b455ac10715cecdfea4bda3be34d0e7b3b0e93baa91f`  
		Last Modified: Tue, 20 Nov 2018 11:18:07 GMT  
		Size: 808.9 KB (808929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0bf065377ab71ed77235fed47bb9414d3af079abf3f51140b4bd2eaf17bcf`  
		Last Modified: Tue, 20 Nov 2018 11:18:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66a1b5e4023eac346f125458709c93e1bd080d3cbe64979c7992f896bc2fa4`  
		Last Modified: Tue, 20 Nov 2018 11:18:10 GMT  
		Size: 7.2 MB (7212094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777e07661f77a488f76008ff30e5adddd19e8c529dc1b058c5eb41b9a1171918`  
		Last Modified: Tue, 20 Nov 2018 11:18:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4133689f3e1d45af8ba632079acdf1333bcd12f8e4e037873a314a131adcaaf`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed477c188c6337480b2bdb3e5f8dc8f62476ce120419177fe9c5ea21636255bd`  
		Last Modified: Tue, 20 Nov 2018 11:18:27 GMT  
		Size: 55.6 MB (55620141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2017e75277eede1d007ec66d8e1b7159d0b3470d2d76092fae5b6dc5775b08`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff57c35e126fd9eec7b75ecf480cc3b80197bf06580fbf09493f38c66916651a`  
		Last Modified: Tue, 20 Nov 2018 11:18:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:6ffd930db4a1858d8cba9ddde1ccf840d09c69a955e5c6adc941d5e185de7c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:1cc0ca717e42a4b094557ee85b93cf623539a97ce2b9b5fe933c5656d8adc6c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118571518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a34bfc8f676e93f8607e2d17658953655cb4ff7d00ac61b346ab6d29e641545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:02:50 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 29 Dec 2018 01:02:50 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 29 Dec 2018 01:02:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:03:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:03:24 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:03:25 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:03:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:03:26 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:03:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d02775fb3d1c9944ad5b7dc48318c851e8b5ebafd3741b72fae5e05edd139`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdfa16736cf316f7fd54920e8666a70596f62e6efb18ed07477410dec58ff6`  
		Last Modified: Sat, 29 Dec 2018 01:07:45 GMT  
		Size: 77.7 MB (77740083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff217892c080f0e0ad04b28f4bdf134b9704c30f2de9a9c442dc18128cfa2479`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c9961999981dcae7f362c2871cb13f7cb9c66508be897c874a0f1ae28a28e0`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:f761430ed5ab99e4e4b388d8b52c9c67921c1b7f1fb59f7e27c8979af2831015
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110932328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21323ed4cc4c62be39a293ff373a815b9f186441f269dbf75ee6bad12fea5a46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:41:16 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 20 Nov 2018 10:41:20 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Tue, 20 Nov 2018 10:41:27 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:43:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:43:48 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:43:50 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:43:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:43:58 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:44:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff48758f8f4b6d82b1f5c67655a630f1dc00aa7c46d7f13ea293e7e640e761d`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaaa38ca3bc0e6f3510ac6e0bb61c095d03c54123e7df15237a1bdb6b42f590`  
		Last Modified: Tue, 20 Nov 2018 10:53:15 GMT  
		Size: 74.1 MB (74096570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da99abe2b9d55d1cf6fdf8d42841f870765a17d299a5eb920f6da235f82fd9e3`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e45ca758377af052d5d1685da8a22d1a1b510bdfb1b9b40c55e9fa9e82430eb`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:9b1da008d669f2583b4a2b18b99f8f8c108002d7ff282535c741191cbe4c45ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123131344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524bee3f3c2bfe80e99fdf848dcbf6e9c5c440e9f6dd8cccf5cad541eaab9549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:50:45 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 20 Nov 2018 10:50:46 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Tue, 20 Nov 2018 10:50:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:53:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:53:35 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:53:37 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:53:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:53:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:53:43 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:53:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03909e74a913355b51c0932ad92d3fa6c80041564560ebfca52c3a262d7e672`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066666a89ff8ea02a1479520765146d92536ee21d8bf917b8dbd903b04c2cbc9`  
		Last Modified: Tue, 20 Nov 2018 11:16:54 GMT  
		Size: 78.3 MB (78291439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c6e512562aaaa7af8b41853b59439487a19b0c92217944935a2a03635df84`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619b9b4c9671b30eb2b929d5151d14102a5266ae4e960a95e1c71c9d6f15775c`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.37`

```console
$ docker pull mariadb@sha256:6ffd930db4a1858d8cba9ddde1ccf840d09c69a955e5c6adc941d5e185de7c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.37` - linux; amd64

```console
$ docker pull mariadb@sha256:1cc0ca717e42a4b094557ee85b93cf623539a97ce2b9b5fe933c5656d8adc6c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118571518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a34bfc8f676e93f8607e2d17658953655cb4ff7d00ac61b346ab6d29e641545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:02:50 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 29 Dec 2018 01:02:50 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 29 Dec 2018 01:02:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:03:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:03:24 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:03:25 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:03:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:03:26 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:03:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d02775fb3d1c9944ad5b7dc48318c851e8b5ebafd3741b72fae5e05edd139`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdfa16736cf316f7fd54920e8666a70596f62e6efb18ed07477410dec58ff6`  
		Last Modified: Sat, 29 Dec 2018 01:07:45 GMT  
		Size: 77.7 MB (77740083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff217892c080f0e0ad04b28f4bdf134b9704c30f2de9a9c442dc18128cfa2479`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c9961999981dcae7f362c2871cb13f7cb9c66508be897c874a0f1ae28a28e0`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:f761430ed5ab99e4e4b388d8b52c9c67921c1b7f1fb59f7e27c8979af2831015
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110932328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21323ed4cc4c62be39a293ff373a815b9f186441f269dbf75ee6bad12fea5a46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:41:16 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 20 Nov 2018 10:41:20 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Tue, 20 Nov 2018 10:41:27 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:43:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:43:48 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:43:50 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:43:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:43:58 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:44:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff48758f8f4b6d82b1f5c67655a630f1dc00aa7c46d7f13ea293e7e640e761d`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaaa38ca3bc0e6f3510ac6e0bb61c095d03c54123e7df15237a1bdb6b42f590`  
		Last Modified: Tue, 20 Nov 2018 10:53:15 GMT  
		Size: 74.1 MB (74096570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da99abe2b9d55d1cf6fdf8d42841f870765a17d299a5eb920f6da235f82fd9e3`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e45ca758377af052d5d1685da8a22d1a1b510bdfb1b9b40c55e9fa9e82430eb`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37` - linux; ppc64le

```console
$ docker pull mariadb@sha256:9b1da008d669f2583b4a2b18b99f8f8c108002d7ff282535c741191cbe4c45ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123131344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524bee3f3c2bfe80e99fdf848dcbf6e9c5c440e9f6dd8cccf5cad541eaab9549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:50:45 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 20 Nov 2018 10:50:46 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Tue, 20 Nov 2018 10:50:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:53:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:53:35 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:53:37 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:53:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:53:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:53:43 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:53:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03909e74a913355b51c0932ad92d3fa6c80041564560ebfca52c3a262d7e672`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066666a89ff8ea02a1479520765146d92536ee21d8bf917b8dbd903b04c2cbc9`  
		Last Modified: Tue, 20 Nov 2018 11:16:54 GMT  
		Size: 78.3 MB (78291439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c6e512562aaaa7af8b41853b59439487a19b0c92217944935a2a03635df84`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619b9b4c9671b30eb2b929d5151d14102a5266ae4e960a95e1c71c9d6f15775c`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.37-bionic`

```console
$ docker pull mariadb@sha256:6ffd930db4a1858d8cba9ddde1ccf840d09c69a955e5c6adc941d5e185de7c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.37-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:1cc0ca717e42a4b094557ee85b93cf623539a97ce2b9b5fe933c5656d8adc6c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118571518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a34bfc8f676e93f8607e2d17658953655cb4ff7d00ac61b346ab6d29e641545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:02:50 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 29 Dec 2018 01:02:50 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 29 Dec 2018 01:02:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:03:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:03:24 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:03:25 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:03:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:03:26 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:03:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d02775fb3d1c9944ad5b7dc48318c851e8b5ebafd3741b72fae5e05edd139`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdfa16736cf316f7fd54920e8666a70596f62e6efb18ed07477410dec58ff6`  
		Last Modified: Sat, 29 Dec 2018 01:07:45 GMT  
		Size: 77.7 MB (77740083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff217892c080f0e0ad04b28f4bdf134b9704c30f2de9a9c442dc18128cfa2479`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c9961999981dcae7f362c2871cb13f7cb9c66508be897c874a0f1ae28a28e0`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:f761430ed5ab99e4e4b388d8b52c9c67921c1b7f1fb59f7e27c8979af2831015
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110932328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21323ed4cc4c62be39a293ff373a815b9f186441f269dbf75ee6bad12fea5a46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:41:16 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 20 Nov 2018 10:41:20 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Tue, 20 Nov 2018 10:41:27 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:43:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:43:48 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:43:50 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:43:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:43:58 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:44:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff48758f8f4b6d82b1f5c67655a630f1dc00aa7c46d7f13ea293e7e640e761d`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaaa38ca3bc0e6f3510ac6e0bb61c095d03c54123e7df15237a1bdb6b42f590`  
		Last Modified: Tue, 20 Nov 2018 10:53:15 GMT  
		Size: 74.1 MB (74096570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da99abe2b9d55d1cf6fdf8d42841f870765a17d299a5eb920f6da235f82fd9e3`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e45ca758377af052d5d1685da8a22d1a1b510bdfb1b9b40c55e9fa9e82430eb`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:9b1da008d669f2583b4a2b18b99f8f8c108002d7ff282535c741191cbe4c45ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123131344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524bee3f3c2bfe80e99fdf848dcbf6e9c5c440e9f6dd8cccf5cad541eaab9549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:50:45 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 20 Nov 2018 10:50:46 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Tue, 20 Nov 2018 10:50:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:53:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:53:35 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:53:37 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:53:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:53:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:53:43 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:53:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03909e74a913355b51c0932ad92d3fa6c80041564560ebfca52c3a262d7e672`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066666a89ff8ea02a1479520765146d92536ee21d8bf917b8dbd903b04c2cbc9`  
		Last Modified: Tue, 20 Nov 2018 11:16:54 GMT  
		Size: 78.3 MB (78291439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c6e512562aaaa7af8b41853b59439487a19b0c92217944935a2a03635df84`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619b9b4c9671b30eb2b929d5151d14102a5266ae4e960a95e1c71c9d6f15775c`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:6ffd930db4a1858d8cba9ddde1ccf840d09c69a955e5c6adc941d5e185de7c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:1cc0ca717e42a4b094557ee85b93cf623539a97ce2b9b5fe933c5656d8adc6c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118571518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a34bfc8f676e93f8607e2d17658953655cb4ff7d00ac61b346ab6d29e641545`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:02:50 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 29 Dec 2018 01:02:50 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 29 Dec 2018 01:02:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:03:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:03:24 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:03:25 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:03:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:03:26 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:03:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d02775fb3d1c9944ad5b7dc48318c851e8b5ebafd3741b72fae5e05edd139`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdfa16736cf316f7fd54920e8666a70596f62e6efb18ed07477410dec58ff6`  
		Last Modified: Sat, 29 Dec 2018 01:07:45 GMT  
		Size: 77.7 MB (77740083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff217892c080f0e0ad04b28f4bdf134b9704c30f2de9a9c442dc18128cfa2479`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c9961999981dcae7f362c2871cb13f7cb9c66508be897c874a0f1ae28a28e0`  
		Last Modified: Sat, 29 Dec 2018 01:07:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:f761430ed5ab99e4e4b388d8b52c9c67921c1b7f1fb59f7e27c8979af2831015
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110932328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21323ed4cc4c62be39a293ff373a815b9f186441f269dbf75ee6bad12fea5a46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:41:16 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 20 Nov 2018 10:41:20 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Tue, 20 Nov 2018 10:41:27 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:43:47 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:43:48 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:43:50 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:43:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:43:58 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:44:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff48758f8f4b6d82b1f5c67655a630f1dc00aa7c46d7f13ea293e7e640e761d`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaaa38ca3bc0e6f3510ac6e0bb61c095d03c54123e7df15237a1bdb6b42f590`  
		Last Modified: Tue, 20 Nov 2018 10:53:15 GMT  
		Size: 74.1 MB (74096570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da99abe2b9d55d1cf6fdf8d42841f870765a17d299a5eb920f6da235f82fd9e3`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e45ca758377af052d5d1685da8a22d1a1b510bdfb1b9b40c55e9fa9e82430eb`  
		Last Modified: Tue, 20 Nov 2018 10:52:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:9b1da008d669f2583b4a2b18b99f8f8c108002d7ff282535c741191cbe4c45ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123131344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524bee3f3c2bfe80e99fdf848dcbf6e9c5c440e9f6dd8cccf5cad541eaab9549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:50:45 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 20 Nov 2018 10:50:46 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Tue, 20 Nov 2018 10:50:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 10:53:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 10:53:35 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 10:53:37 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 10:53:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 10:53:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 10:53:43 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 10:53:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03909e74a913355b51c0932ad92d3fa6c80041564560ebfca52c3a262d7e672`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066666a89ff8ea02a1479520765146d92536ee21d8bf917b8dbd903b04c2cbc9`  
		Last Modified: Tue, 20 Nov 2018 11:16:54 GMT  
		Size: 78.3 MB (78291439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c6e512562aaaa7af8b41853b59439487a19b0c92217944935a2a03635df84`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619b9b4c9671b30eb2b929d5151d14102a5266ae4e960a95e1c71c9d6f15775c`  
		Last Modified: Tue, 20 Nov 2018 11:16:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:cb374cd50104c3258c87d1617e8d4496aacf6500a383c8bb9735c47193e82f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:b00c02d3733125cba9b714c9b6a2ce4fa9519a0bc8381914570e6121a6efeebe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114130069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774e7c15b878143385f166736a2ef2d49d1ba09c5824fc01238edd0c3a095c67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:02:22 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 29 Dec 2018 01:02:23 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Sat, 29 Dec 2018 01:02:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:45 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:45 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:46 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:47 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410d2d3786a735dfd6d4beb4ad5e55be275db565f9f5ee13d35f888e93d71677`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf870929cb9e886ee1d5c09998a9eae2d58f0a7c54a37fca30eaffbe4730b6ef`  
		Last Modified: Sat, 29 Dec 2018 01:07:23 GMT  
		Size: 73.3 MB (73298632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e12a8d557c06ec7eb414068c17e508d79a4ec195d8b0686d5b11d6f52193e3`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdbeec00957937f0d617289cfd48009a98873de70f128d01b9cb4c8347b1555`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e7e674423941f226cdfe03fc10feb47d8736e972aad523d9d4cdbfe5ca61a37e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110898391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8028c411a6f27169e515996fcbe249bb51dae76449564e8e8be3babf7bf751`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:38:10 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Dec 2018 09:42:00 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Wed, 26 Dec 2018 09:42:03 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 26 Dec 2018 09:43:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 26 Dec 2018 09:43:51 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Dec 2018 09:43:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 26 Dec 2018 09:43:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Dec 2018 09:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:43:55 GMT
EXPOSE 3306
# Wed, 26 Dec 2018 09:43:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec3befc210c0c302de8bde80c87228c6b0188fba4181ac137cc9710a878cb6c`  
		Last Modified: Wed, 26 Dec 2018 09:44:45 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3d471de5806e287fd16fda4cfbf2f5986d9736b86c7608596225b0fc85a032`  
		Last Modified: Wed, 26 Dec 2018 09:45:15 GMT  
		Size: 74.1 MB (74062632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1b7f57e1dbab888841839e848c281b59d9bbd611f464c41c70a84fce8d27a`  
		Last Modified: Wed, 26 Dec 2018 09:44:46 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd4094c95cc153a35b2e8ac563e318938a942bf435a9d9813bbb2e1e94e20c`  
		Last Modified: Wed, 26 Dec 2018 09:44:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2a623e1ebf9d970de01d189410591bd4b50c52f48a182263717787bdc2ef50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122959749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab67d246b0852a26336801e9bd01a23211bee3c2b681f461b5f61c10cafba2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:47:53 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Dec 2018 09:36:25 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Wed, 26 Dec 2018 09:36:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 26 Dec 2018 09:38:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 26 Dec 2018 09:38:21 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Dec 2018 09:38:22 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 26 Dec 2018 09:38:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Dec 2018 09:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:38:32 GMT
EXPOSE 3306
# Wed, 26 Dec 2018 09:38:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaecd6f911db611c48da5c801657682a2e28a0a46f1c8aaed578276705fe5efa`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127a8f541e0e7e279fd9bc1132ee2330518802e97367898c0af2582a353475e5`  
		Last Modified: Wed, 26 Dec 2018 09:39:46 GMT  
		Size: 78.1 MB (78119840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f024ababf8255a301f32e21e657d41e3be1cfee7ac4bcc5d8735b6dd1cb1f`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47456a8ef910d330dcd7d9d788c4c4625ad76fdf28f38470ca371b0cce024cc`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.20`

```console
$ docker pull mariadb@sha256:cb374cd50104c3258c87d1617e8d4496aacf6500a383c8bb9735c47193e82f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.20` - linux; amd64

```console
$ docker pull mariadb@sha256:b00c02d3733125cba9b714c9b6a2ce4fa9519a0bc8381914570e6121a6efeebe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114130069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774e7c15b878143385f166736a2ef2d49d1ba09c5824fc01238edd0c3a095c67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:02:22 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 29 Dec 2018 01:02:23 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Sat, 29 Dec 2018 01:02:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:45 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:45 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:46 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:47 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410d2d3786a735dfd6d4beb4ad5e55be275db565f9f5ee13d35f888e93d71677`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf870929cb9e886ee1d5c09998a9eae2d58f0a7c54a37fca30eaffbe4730b6ef`  
		Last Modified: Sat, 29 Dec 2018 01:07:23 GMT  
		Size: 73.3 MB (73298632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e12a8d557c06ec7eb414068c17e508d79a4ec195d8b0686d5b11d6f52193e3`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdbeec00957937f0d617289cfd48009a98873de70f128d01b9cb4c8347b1555`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.20` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e7e674423941f226cdfe03fc10feb47d8736e972aad523d9d4cdbfe5ca61a37e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110898391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8028c411a6f27169e515996fcbe249bb51dae76449564e8e8be3babf7bf751`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:38:10 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Dec 2018 09:42:00 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Wed, 26 Dec 2018 09:42:03 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 26 Dec 2018 09:43:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 26 Dec 2018 09:43:51 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Dec 2018 09:43:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 26 Dec 2018 09:43:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Dec 2018 09:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:43:55 GMT
EXPOSE 3306
# Wed, 26 Dec 2018 09:43:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec3befc210c0c302de8bde80c87228c6b0188fba4181ac137cc9710a878cb6c`  
		Last Modified: Wed, 26 Dec 2018 09:44:45 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3d471de5806e287fd16fda4cfbf2f5986d9736b86c7608596225b0fc85a032`  
		Last Modified: Wed, 26 Dec 2018 09:45:15 GMT  
		Size: 74.1 MB (74062632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1b7f57e1dbab888841839e848c281b59d9bbd611f464c41c70a84fce8d27a`  
		Last Modified: Wed, 26 Dec 2018 09:44:46 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd4094c95cc153a35b2e8ac563e318938a942bf435a9d9813bbb2e1e94e20c`  
		Last Modified: Wed, 26 Dec 2018 09:44:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.20` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2a623e1ebf9d970de01d189410591bd4b50c52f48a182263717787bdc2ef50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122959749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab67d246b0852a26336801e9bd01a23211bee3c2b681f461b5f61c10cafba2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:47:53 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Dec 2018 09:36:25 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Wed, 26 Dec 2018 09:36:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 26 Dec 2018 09:38:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 26 Dec 2018 09:38:21 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Dec 2018 09:38:22 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 26 Dec 2018 09:38:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Dec 2018 09:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:38:32 GMT
EXPOSE 3306
# Wed, 26 Dec 2018 09:38:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaecd6f911db611c48da5c801657682a2e28a0a46f1c8aaed578276705fe5efa`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127a8f541e0e7e279fd9bc1132ee2330518802e97367898c0af2582a353475e5`  
		Last Modified: Wed, 26 Dec 2018 09:39:46 GMT  
		Size: 78.1 MB (78119840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f024ababf8255a301f32e21e657d41e3be1cfee7ac4bcc5d8735b6dd1cb1f`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47456a8ef910d330dcd7d9d788c4c4625ad76fdf28f38470ca371b0cce024cc`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.20-bionic`

```console
$ docker pull mariadb@sha256:cb374cd50104c3258c87d1617e8d4496aacf6500a383c8bb9735c47193e82f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.20-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:b00c02d3733125cba9b714c9b6a2ce4fa9519a0bc8381914570e6121a6efeebe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114130069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774e7c15b878143385f166736a2ef2d49d1ba09c5824fc01238edd0c3a095c67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:02:22 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 29 Dec 2018 01:02:23 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Sat, 29 Dec 2018 01:02:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:45 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:45 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:46 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:47 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410d2d3786a735dfd6d4beb4ad5e55be275db565f9f5ee13d35f888e93d71677`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf870929cb9e886ee1d5c09998a9eae2d58f0a7c54a37fca30eaffbe4730b6ef`  
		Last Modified: Sat, 29 Dec 2018 01:07:23 GMT  
		Size: 73.3 MB (73298632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e12a8d557c06ec7eb414068c17e508d79a4ec195d8b0686d5b11d6f52193e3`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdbeec00957937f0d617289cfd48009a98873de70f128d01b9cb4c8347b1555`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.20-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e7e674423941f226cdfe03fc10feb47d8736e972aad523d9d4cdbfe5ca61a37e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110898391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8028c411a6f27169e515996fcbe249bb51dae76449564e8e8be3babf7bf751`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:38:10 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Dec 2018 09:42:00 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Wed, 26 Dec 2018 09:42:03 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 26 Dec 2018 09:43:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 26 Dec 2018 09:43:51 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Dec 2018 09:43:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 26 Dec 2018 09:43:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Dec 2018 09:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:43:55 GMT
EXPOSE 3306
# Wed, 26 Dec 2018 09:43:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec3befc210c0c302de8bde80c87228c6b0188fba4181ac137cc9710a878cb6c`  
		Last Modified: Wed, 26 Dec 2018 09:44:45 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3d471de5806e287fd16fda4cfbf2f5986d9736b86c7608596225b0fc85a032`  
		Last Modified: Wed, 26 Dec 2018 09:45:15 GMT  
		Size: 74.1 MB (74062632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1b7f57e1dbab888841839e848c281b59d9bbd611f464c41c70a84fce8d27a`  
		Last Modified: Wed, 26 Dec 2018 09:44:46 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd4094c95cc153a35b2e8ac563e318938a942bf435a9d9813bbb2e1e94e20c`  
		Last Modified: Wed, 26 Dec 2018 09:44:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.20-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2a623e1ebf9d970de01d189410591bd4b50c52f48a182263717787bdc2ef50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122959749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab67d246b0852a26336801e9bd01a23211bee3c2b681f461b5f61c10cafba2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:47:53 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Dec 2018 09:36:25 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Wed, 26 Dec 2018 09:36:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 26 Dec 2018 09:38:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 26 Dec 2018 09:38:21 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Dec 2018 09:38:22 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 26 Dec 2018 09:38:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Dec 2018 09:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:38:32 GMT
EXPOSE 3306
# Wed, 26 Dec 2018 09:38:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaecd6f911db611c48da5c801657682a2e28a0a46f1c8aaed578276705fe5efa`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127a8f541e0e7e279fd9bc1132ee2330518802e97367898c0af2582a353475e5`  
		Last Modified: Wed, 26 Dec 2018 09:39:46 GMT  
		Size: 78.1 MB (78119840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f024ababf8255a301f32e21e657d41e3be1cfee7ac4bcc5d8735b6dd1cb1f`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47456a8ef910d330dcd7d9d788c4c4625ad76fdf28f38470ca371b0cce024cc`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:cb374cd50104c3258c87d1617e8d4496aacf6500a383c8bb9735c47193e82f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:b00c02d3733125cba9b714c9b6a2ce4fa9519a0bc8381914570e6121a6efeebe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114130069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774e7c15b878143385f166736a2ef2d49d1ba09c5824fc01238edd0c3a095c67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:02:22 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 29 Dec 2018 01:02:23 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Sat, 29 Dec 2018 01:02:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:45 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:45 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:46 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:47 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410d2d3786a735dfd6d4beb4ad5e55be275db565f9f5ee13d35f888e93d71677`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf870929cb9e886ee1d5c09998a9eae2d58f0a7c54a37fca30eaffbe4730b6ef`  
		Last Modified: Sat, 29 Dec 2018 01:07:23 GMT  
		Size: 73.3 MB (73298632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e12a8d557c06ec7eb414068c17e508d79a4ec195d8b0686d5b11d6f52193e3`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdbeec00957937f0d617289cfd48009a98873de70f128d01b9cb4c8347b1555`  
		Last Modified: Sat, 29 Dec 2018 01:07:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e7e674423941f226cdfe03fc10feb47d8736e972aad523d9d4cdbfe5ca61a37e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110898391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8028c411a6f27169e515996fcbe249bb51dae76449564e8e8be3babf7bf751`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:38:10 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Dec 2018 09:42:00 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Wed, 26 Dec 2018 09:42:03 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 26 Dec 2018 09:43:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 26 Dec 2018 09:43:51 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Dec 2018 09:43:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 26 Dec 2018 09:43:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Dec 2018 09:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:43:55 GMT
EXPOSE 3306
# Wed, 26 Dec 2018 09:43:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec3befc210c0c302de8bde80c87228c6b0188fba4181ac137cc9710a878cb6c`  
		Last Modified: Wed, 26 Dec 2018 09:44:45 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3d471de5806e287fd16fda4cfbf2f5986d9736b86c7608596225b0fc85a032`  
		Last Modified: Wed, 26 Dec 2018 09:45:15 GMT  
		Size: 74.1 MB (74062632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1b7f57e1dbab888841839e848c281b59d9bbd611f464c41c70a84fce8d27a`  
		Last Modified: Wed, 26 Dec 2018 09:44:46 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd4094c95cc153a35b2e8ac563e318938a942bf435a9d9813bbb2e1e94e20c`  
		Last Modified: Wed, 26 Dec 2018 09:44:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2a623e1ebf9d970de01d189410591bd4b50c52f48a182263717787bdc2ef50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122959749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab67d246b0852a26336801e9bd01a23211bee3c2b681f461b5f61c10cafba2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:47:53 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Dec 2018 09:36:25 GMT
ENV MARIADB_VERSION=1:10.2.20+maria~bionic
# Wed, 26 Dec 2018 09:36:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 26 Dec 2018 09:38:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 26 Dec 2018 09:38:21 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Dec 2018 09:38:22 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 26 Dec 2018 09:38:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Dec 2018 09:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:38:32 GMT
EXPOSE 3306
# Wed, 26 Dec 2018 09:38:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaecd6f911db611c48da5c801657682a2e28a0a46f1c8aaed578276705fe5efa`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127a8f541e0e7e279fd9bc1132ee2330518802e97367898c0af2582a353475e5`  
		Last Modified: Wed, 26 Dec 2018 09:39:46 GMT  
		Size: 78.1 MB (78119840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f024ababf8255a301f32e21e657d41e3be1cfee7ac4bcc5d8735b6dd1cb1f`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47456a8ef910d330dcd7d9d788c4c4625ad76fdf28f38470ca371b0cce024cc`  
		Last Modified: Wed, 26 Dec 2018 09:39:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.11`

```console
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.11` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.11` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.11` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.11-bionic`

```console
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.11-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.11-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.11-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4`

```console
$ docker pull mariadb@sha256:a71759c7e6dba92cd6ef70149838a066d5b2c934776b370e4110472afac731f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4` - linux; amd64

```console
$ docker pull mariadb@sha256:a655200273f784a9ca3884e446f4e59ec38c9de6c538a48857684116ee5c9a3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116067947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2309bdc0d5311684aae2888aacdba318a781a46c160ab46c90da7b0332262`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:07 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 29 Dec 2018 01:01:07 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Sat, 29 Dec 2018 01:01:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:01:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:01:40 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:01:41 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:01:42 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:01:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8e7f34ae5de6e4f37666ed83221be9e559bbd8d0258c58f5db2fb3f0d5ac1`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8e37fd9dee79f7653c96c9435c022d135ee0e7e89c7e4a6b3482340729cada`  
		Last Modified: Sat, 29 Dec 2018 01:06:32 GMT  
		Size: 75.2 MB (75236509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0919b692932cf04c3293b1898d6336fd37c668856ff4d57ff2cf722a9ac35f3`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9032b82831beaf796693fb6444cf562a652442ba2d5cd62171e405eb781a9f88`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:6fe0c44cd8943a09c8ce8c4386c7f937d755ca07ad4df7527627f735b20f913d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112829310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76978e5d12fa53a67936855e797372b78d5f877437b5b2bb7eb01d3d70f2b883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:32:52 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 25 Dec 2018 10:22:31 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Tue, 25 Dec 2018 10:22:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 25 Dec 2018 10:27:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Dec 2018 10:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Dec 2018 10:28:01 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Tue, 25 Dec 2018 10:28:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Dec 2018 10:28:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Dec 2018 10:28:08 GMT
EXPOSE 3306
# Tue, 25 Dec 2018 10:28:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee13ec708d28e4e7f47fb7fdb539a0d3eee77ca53905066c2f6c992a08b350bf`  
		Last Modified: Tue, 25 Dec 2018 10:29:04 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c970f419f42c3e8e0e41f58b4850bc74444f4812bc56f320a08e4be9f046d08c`  
		Last Modified: Tue, 25 Dec 2018 10:29:32 GMT  
		Size: 76.0 MB (75993548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55f9b0d01ec7869a2d8fcb1b7fe0cca56ba2069aa9fa24e7b3d23f89056e05`  
		Last Modified: Tue, 25 Dec 2018 10:29:04 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c403b381e29ba85fffd5967d8177ee9557c20c70566214c9d52ffca9b19482`  
		Last Modified: Tue, 25 Dec 2018 10:29:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; ppc64le

```console
$ docker pull mariadb@sha256:ae6acb87d20264b8eb9838f7ad41abc527a05a4ad065f00bc7d38d92f2231493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124974225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c55d9eab7b0e8a6b470b3bd5a27bcb6e97655369c01e81834865af85305b3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:39:41 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 25 Dec 2018 09:25:54 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Tue, 25 Dec 2018 09:25:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 25 Dec 2018 09:28:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Dec 2018 09:28:10 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Dec 2018 09:28:11 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Tue, 25 Dec 2018 09:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Dec 2018 09:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Dec 2018 09:28:17 GMT
EXPOSE 3306
# Tue, 25 Dec 2018 09:28:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e1ef9128aaaee38f56b03f58d58a9ce5d88ac4777a19fe25ff68a70a9de3c6`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2151fb4dd123422a464b5fcf58ffdfb1dcc1460cf1ebb910da138278caf086`  
		Last Modified: Tue, 25 Dec 2018 09:29:26 GMT  
		Size: 80.1 MB (80134316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6362028b35da27b98c35796a455d5e2bd27a5805cc6055511a5a18635024bc2b`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da99111b19547bd387fcaf7a254f643bc8195d24694395e29de45f5f096051`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.1`

```console
$ docker pull mariadb@sha256:a71759c7e6dba92cd6ef70149838a066d5b2c934776b370e4110472afac731f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4.1` - linux; amd64

```console
$ docker pull mariadb@sha256:a655200273f784a9ca3884e446f4e59ec38c9de6c538a48857684116ee5c9a3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116067947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2309bdc0d5311684aae2888aacdba318a781a46c160ab46c90da7b0332262`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:07 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 29 Dec 2018 01:01:07 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Sat, 29 Dec 2018 01:01:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:01:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:01:40 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:01:41 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:01:42 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:01:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8e7f34ae5de6e4f37666ed83221be9e559bbd8d0258c58f5db2fb3f0d5ac1`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8e37fd9dee79f7653c96c9435c022d135ee0e7e89c7e4a6b3482340729cada`  
		Last Modified: Sat, 29 Dec 2018 01:06:32 GMT  
		Size: 75.2 MB (75236509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0919b692932cf04c3293b1898d6336fd37c668856ff4d57ff2cf722a9ac35f3`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9032b82831beaf796693fb6444cf562a652442ba2d5cd62171e405eb781a9f88`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:6fe0c44cd8943a09c8ce8c4386c7f937d755ca07ad4df7527627f735b20f913d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112829310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76978e5d12fa53a67936855e797372b78d5f877437b5b2bb7eb01d3d70f2b883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:32:52 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 25 Dec 2018 10:22:31 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Tue, 25 Dec 2018 10:22:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 25 Dec 2018 10:27:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Dec 2018 10:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Dec 2018 10:28:01 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Tue, 25 Dec 2018 10:28:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Dec 2018 10:28:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Dec 2018 10:28:08 GMT
EXPOSE 3306
# Tue, 25 Dec 2018 10:28:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee13ec708d28e4e7f47fb7fdb539a0d3eee77ca53905066c2f6c992a08b350bf`  
		Last Modified: Tue, 25 Dec 2018 10:29:04 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c970f419f42c3e8e0e41f58b4850bc74444f4812bc56f320a08e4be9f046d08c`  
		Last Modified: Tue, 25 Dec 2018 10:29:32 GMT  
		Size: 76.0 MB (75993548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55f9b0d01ec7869a2d8fcb1b7fe0cca56ba2069aa9fa24e7b3d23f89056e05`  
		Last Modified: Tue, 25 Dec 2018 10:29:04 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c403b381e29ba85fffd5967d8177ee9557c20c70566214c9d52ffca9b19482`  
		Last Modified: Tue, 25 Dec 2018 10:29:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:ae6acb87d20264b8eb9838f7ad41abc527a05a4ad065f00bc7d38d92f2231493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124974225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c55d9eab7b0e8a6b470b3bd5a27bcb6e97655369c01e81834865af85305b3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:39:41 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 25 Dec 2018 09:25:54 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Tue, 25 Dec 2018 09:25:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 25 Dec 2018 09:28:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Dec 2018 09:28:10 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Dec 2018 09:28:11 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Tue, 25 Dec 2018 09:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Dec 2018 09:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Dec 2018 09:28:17 GMT
EXPOSE 3306
# Tue, 25 Dec 2018 09:28:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e1ef9128aaaee38f56b03f58d58a9ce5d88ac4777a19fe25ff68a70a9de3c6`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2151fb4dd123422a464b5fcf58ffdfb1dcc1460cf1ebb910da138278caf086`  
		Last Modified: Tue, 25 Dec 2018 09:29:26 GMT  
		Size: 80.1 MB (80134316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6362028b35da27b98c35796a455d5e2bd27a5805cc6055511a5a18635024bc2b`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da99111b19547bd387fcaf7a254f643bc8195d24694395e29de45f5f096051`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.1-bionic`

```console
$ docker pull mariadb@sha256:a71759c7e6dba92cd6ef70149838a066d5b2c934776b370e4110472afac731f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a655200273f784a9ca3884e446f4e59ec38c9de6c538a48857684116ee5c9a3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116067947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2309bdc0d5311684aae2888aacdba318a781a46c160ab46c90da7b0332262`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:07 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 29 Dec 2018 01:01:07 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Sat, 29 Dec 2018 01:01:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:01:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:01:40 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:01:41 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:01:42 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:01:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8e7f34ae5de6e4f37666ed83221be9e559bbd8d0258c58f5db2fb3f0d5ac1`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8e37fd9dee79f7653c96c9435c022d135ee0e7e89c7e4a6b3482340729cada`  
		Last Modified: Sat, 29 Dec 2018 01:06:32 GMT  
		Size: 75.2 MB (75236509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0919b692932cf04c3293b1898d6336fd37c668856ff4d57ff2cf722a9ac35f3`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9032b82831beaf796693fb6444cf562a652442ba2d5cd62171e405eb781a9f88`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:6fe0c44cd8943a09c8ce8c4386c7f937d755ca07ad4df7527627f735b20f913d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112829310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76978e5d12fa53a67936855e797372b78d5f877437b5b2bb7eb01d3d70f2b883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:32:52 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 25 Dec 2018 10:22:31 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Tue, 25 Dec 2018 10:22:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 25 Dec 2018 10:27:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Dec 2018 10:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Dec 2018 10:28:01 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Tue, 25 Dec 2018 10:28:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Dec 2018 10:28:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Dec 2018 10:28:08 GMT
EXPOSE 3306
# Tue, 25 Dec 2018 10:28:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee13ec708d28e4e7f47fb7fdb539a0d3eee77ca53905066c2f6c992a08b350bf`  
		Last Modified: Tue, 25 Dec 2018 10:29:04 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c970f419f42c3e8e0e41f58b4850bc74444f4812bc56f320a08e4be9f046d08c`  
		Last Modified: Tue, 25 Dec 2018 10:29:32 GMT  
		Size: 76.0 MB (75993548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55f9b0d01ec7869a2d8fcb1b7fe0cca56ba2069aa9fa24e7b3d23f89056e05`  
		Last Modified: Tue, 25 Dec 2018 10:29:04 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c403b381e29ba85fffd5967d8177ee9557c20c70566214c9d52ffca9b19482`  
		Last Modified: Tue, 25 Dec 2018 10:29:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:ae6acb87d20264b8eb9838f7ad41abc527a05a4ad065f00bc7d38d92f2231493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124974225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c55d9eab7b0e8a6b470b3bd5a27bcb6e97655369c01e81834865af85305b3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:39:41 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 25 Dec 2018 09:25:54 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Tue, 25 Dec 2018 09:25:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 25 Dec 2018 09:28:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Dec 2018 09:28:10 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Dec 2018 09:28:11 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Tue, 25 Dec 2018 09:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Dec 2018 09:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Dec 2018 09:28:17 GMT
EXPOSE 3306
# Tue, 25 Dec 2018 09:28:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e1ef9128aaaee38f56b03f58d58a9ce5d88ac4777a19fe25ff68a70a9de3c6`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2151fb4dd123422a464b5fcf58ffdfb1dcc1460cf1ebb910da138278caf086`  
		Last Modified: Tue, 25 Dec 2018 09:29:26 GMT  
		Size: 80.1 MB (80134316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6362028b35da27b98c35796a455d5e2bd27a5805cc6055511a5a18635024bc2b`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da99111b19547bd387fcaf7a254f643bc8195d24694395e29de45f5f096051`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4-bionic`

```console
$ docker pull mariadb@sha256:a71759c7e6dba92cd6ef70149838a066d5b2c934776b370e4110472afac731f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a655200273f784a9ca3884e446f4e59ec38c9de6c538a48857684116ee5c9a3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116067947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e2309bdc0d5311684aae2888aacdba318a781a46c160ab46c90da7b0332262`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:07 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 29 Dec 2018 01:01:07 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Sat, 29 Dec 2018 01:01:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:01:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:01:40 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:01:41 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:01:42 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:01:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8e7f34ae5de6e4f37666ed83221be9e559bbd8d0258c58f5db2fb3f0d5ac1`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8e37fd9dee79f7653c96c9435c022d135ee0e7e89c7e4a6b3482340729cada`  
		Last Modified: Sat, 29 Dec 2018 01:06:32 GMT  
		Size: 75.2 MB (75236509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0919b692932cf04c3293b1898d6336fd37c668856ff4d57ff2cf722a9ac35f3`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9032b82831beaf796693fb6444cf562a652442ba2d5cd62171e405eb781a9f88`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:6fe0c44cd8943a09c8ce8c4386c7f937d755ca07ad4df7527627f735b20f913d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112829310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76978e5d12fa53a67936855e797372b78d5f877437b5b2bb7eb01d3d70f2b883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:32:52 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 25 Dec 2018 10:22:31 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Tue, 25 Dec 2018 10:22:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 25 Dec 2018 10:27:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Dec 2018 10:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Dec 2018 10:28:01 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Tue, 25 Dec 2018 10:28:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Dec 2018 10:28:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Dec 2018 10:28:08 GMT
EXPOSE 3306
# Tue, 25 Dec 2018 10:28:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee13ec708d28e4e7f47fb7fdb539a0d3eee77ca53905066c2f6c992a08b350bf`  
		Last Modified: Tue, 25 Dec 2018 10:29:04 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c970f419f42c3e8e0e41f58b4850bc74444f4812bc56f320a08e4be9f046d08c`  
		Last Modified: Tue, 25 Dec 2018 10:29:32 GMT  
		Size: 76.0 MB (75993548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55f9b0d01ec7869a2d8fcb1b7fe0cca56ba2069aa9fa24e7b3d23f89056e05`  
		Last Modified: Tue, 25 Dec 2018 10:29:04 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c403b381e29ba85fffd5967d8177ee9557c20c70566214c9d52ffca9b19482`  
		Last Modified: Tue, 25 Dec 2018 10:29:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:ae6acb87d20264b8eb9838f7ad41abc527a05a4ad065f00bc7d38d92f2231493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124974225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c55d9eab7b0e8a6b470b3bd5a27bcb6e97655369c01e81834865af85305b3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:39:41 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 25 Dec 2018 09:25:54 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Tue, 25 Dec 2018 09:25:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 25 Dec 2018 09:28:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 25 Dec 2018 09:28:10 GMT
VOLUME [/var/lib/mysql]
# Tue, 25 Dec 2018 09:28:11 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Tue, 25 Dec 2018 09:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Dec 2018 09:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Dec 2018 09:28:17 GMT
EXPOSE 3306
# Tue, 25 Dec 2018 09:28:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e1ef9128aaaee38f56b03f58d58a9ce5d88ac4777a19fe25ff68a70a9de3c6`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2151fb4dd123422a464b5fcf58ffdfb1dcc1460cf1ebb910da138278caf086`  
		Last Modified: Tue, 25 Dec 2018 09:29:26 GMT  
		Size: 80.1 MB (80134316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6362028b35da27b98c35796a455d5e2bd27a5805cc6055511a5a18635024bc2b`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da99111b19547bd387fcaf7a254f643bc8195d24694395e29de45f5f096051`  
		Last Modified: Tue, 25 Dec 2018 09:29:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:e07d6085b4171e009750afbb76620677ccc13f43a5ca391ba5f971cfb5e2c16b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:2142f3dfcf3cb756e00bdf1ea4d745f5cf558f5300a0595d0c66ea4c87a964d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa750959a2a767332b6a608fb39863a3c94667b32a0033fdccd23bb0aaddc740`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:05:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:05:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:05:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:05:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:05:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:39 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:05:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:05:40 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 29 Dec 2018 01:05:41 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Sat, 29 Dec 2018 01:05:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:05:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:05:56 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:05:56 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:05:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:05:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:05:57 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:05:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78932acd475fc14fe67dd092ff916ab1681c80523f59bb61ea101665ea7f952`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39025865673a71355e24f5fd5be593ae4c28f1afb29d59b4a077b9447cfee0ef`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cec40b3d514cae818816c403e8d1a89a5e230bc4578eb1a79c15de84313b88`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 1.6 MB (1573200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7a19885a98f7a36bcf6d861172814df0d783e6f4b4f30f2d820e1ae165fa57`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d593c6f87aa648a9823e6a0604b0135ded9100d4385a3c55a528f01329ae4910`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 4.3 MB (4262044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5aa1ebc5ed5fbd6962ca277293a1ea917482e366a8ce477731dbda33e88e49`  
		Last Modified: Sat, 29 Dec 2018 01:08:12 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afe34cbee594391caef15f65357000f0b6f3f7330bfb233f478f9c713adad5`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bd0220c29c928f7bc4805487a305b37574085abce9b6449f76a04bf0e01664`  
		Last Modified: Sat, 29 Dec 2018 01:08:19 GMT  
		Size: 45.3 MB (45275769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c4860c7811f6e273e0fd1a3edfda9f0b7ccaae8ad8d1a01bbf644318b21d8`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b8dc880970437c710d565c1c838fe32ce1be2fff8d47ec15d782ebc4b2102d`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:8810d880385ae5e31fcd1a223db0d37f61e23ffcdfe17aaf1edbc5867a6786fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114576867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b1cb1dd7c78c8f0584712b8ef313a00d263a3e6e3ae46c27a2c75596123e7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:19:24 GMT
ADD file:0a45502ad7c85c18681995e30d3c7bede5bb2588ee7676cdfac0b5658b58dd2b in / 
# Tue, 20 Nov 2018 12:19:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:19:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:19:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:42:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:42:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:42:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:42:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:43:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:43:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:43:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 12:43:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:43:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:43:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:43:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:43:34 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:43:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8b6673ce01787770222ba44e80c245426fa22dce1db923a7600440a8e662c7b5`  
		Last Modified: Mon, 19 Nov 2018 15:08:24 GMT  
		Size: 64.9 MB (64852444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ba90163e5080b631c29a7ab22baa7601efe8096c36b25a544e07c6ad0a458c`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50599dda5b158258a1891b96a30b1eba38442a5e5234cfc2f20b89a8a1f40607`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a88bbc31c20d29dcff47385c8b7b8db4ac49f1adca63595a79ad3e571a5e4e`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b85fc000d9ef82818fe90a11eb0ba9190863b0e7d9e867d433f6642eb3e133`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad933fc852d68ea2b49fd2c8f0ee0b3b124c3f98cc0ee1dacd0276fcec075fc2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40004ce158704d626ff7008b43c951a9604525b8600d7a54905cb1492b41e2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.6 MB (1553018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b619d213153c234a4e579dab6f444fc308cd827a83eceb2bf4c5cf91285ffede`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599ddf9d899a8557b17092e2ffcd01e1668ca55273c09db6baf32e8711b9cc61`  
		Last Modified: Tue, 20 Nov 2018 12:45:34 GMT  
		Size: 4.2 MB (4248532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed1a5af71ada93ebfaf77be47da126e804a8d30e90ca70923f52f10e4ff261`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47042fbd7d55f35477930890020724cc6c8571fd181f645bcce2649ba8af4943`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d480952a4b132d630ed117322f3cb74bfab92e63338a8513e97eebe4b6b9e5e`  
		Last Modified: Tue, 20 Nov 2018 12:45:45 GMT  
		Size: 43.8 MB (43826976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad6d943e14413e2d9802d023940841f3d7711047e7af76912c6ef4ba6a5f4f0`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b106ddf5ec7163e66cdd62591cc170a9932523f4486dbe1b74088c160015301d`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:54c1412966269b28551f53ac2a3b5b06752e13550c4e689ebe86b07bcb185092
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9227ef9d75fd293b9cdaac9027805f936d48d49f9da6954e0275038002b2becd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:29:10 GMT
ADD file:28730c88b5e0cc8c4c5b4c4a9093a78de0973fa4912bc0016eeec96d1520b67a in / 
# Tue, 20 Nov 2018 09:30:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:30:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:30:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:30:31 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 11:03:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 11:04:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:04:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 11:04:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 11:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 11:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:05:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 11:05:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 11:05:31 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 11:05:32 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 11:05:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 11:06:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 11:07:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 11:07:39 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 11:07:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 11:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:08:08 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 11:08:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:188ad52886fad1892184a37c9deba8763109ea163b7e292d25797516b10548a4`  
		Last Modified: Tue, 20 Nov 2018 09:51:51 GMT  
		Size: 69.8 MB (69812482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352cf422f25052eaaefd68a1963c2de6a003cfbfcd9e28b2322ca0dea7f845e`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 63.4 KB (63420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4a446cc6d0e041a4127ba330296262d3c62b7205437a04ad6a9216e789f6d1`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575c1f3316dcbcc467054bea942e309f2d8397506a0f188c6a8a56db790c609d`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615d26876cd608eeeb73bd6f560eb5946a14791587fba84b4108a302b9cb7c9`  
		Last Modified: Tue, 20 Nov 2018 11:19:37 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb57bcd0abadf7b3956c800497568b3981cbf6da5953fb06896b0ed415e07b1`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6f1611997087a91ad226b92aeaa54b39acb7dab317f9d63f864e4bf8055f0a`  
		Last Modified: Tue, 20 Nov 2018 11:19:35 GMT  
		Size: 1.5 MB (1546181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d7f8da245a685961bd55208ab92fc4c1be817e6f5222f6e82ba912342cf9ae`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e20c83125f924528cac7fcf52c68bca0bec39bc564cbbd82567e12e417dbad`  
		Last Modified: Tue, 20 Nov 2018 11:19:36 GMT  
		Size: 4.3 MB (4287791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096502cf025ee5fa3fd8d2bbc6bd3d5cbc58eff5c07876c5e8a470d56ef8cc0`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b4c0f15e682d6a4c4930ab35e2a8ed77611f037894634ab43ad6369cb75b90`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf81723074c8341d97f77a34a8fba01bc32f5581812705c847737778015c22`  
		Last Modified: Tue, 20 Nov 2018 11:19:44 GMT  
		Size: 36.2 MB (36188936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9df5d4375e3810b3072a408a43b00602dfc486b38db2f1f41952f50ef8a8a7`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a420d5735d6d49fc0b713adf2213ec29198d065acd338c6fcdbcc329783eb7fb`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:e07d6085b4171e009750afbb76620677ccc13f43a5ca391ba5f971cfb5e2c16b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:2142f3dfcf3cb756e00bdf1ea4d745f5cf558f5300a0595d0c66ea4c87a964d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa750959a2a767332b6a608fb39863a3c94667b32a0033fdccd23bb0aaddc740`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:05:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:05:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:05:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:05:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:05:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:39 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:05:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:05:40 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 29 Dec 2018 01:05:41 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Sat, 29 Dec 2018 01:05:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:05:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:05:56 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:05:56 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:05:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:05:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:05:57 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:05:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78932acd475fc14fe67dd092ff916ab1681c80523f59bb61ea101665ea7f952`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39025865673a71355e24f5fd5be593ae4c28f1afb29d59b4a077b9447cfee0ef`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cec40b3d514cae818816c403e8d1a89a5e230bc4578eb1a79c15de84313b88`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 1.6 MB (1573200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7a19885a98f7a36bcf6d861172814df0d783e6f4b4f30f2d820e1ae165fa57`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d593c6f87aa648a9823e6a0604b0135ded9100d4385a3c55a528f01329ae4910`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 4.3 MB (4262044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5aa1ebc5ed5fbd6962ca277293a1ea917482e366a8ce477731dbda33e88e49`  
		Last Modified: Sat, 29 Dec 2018 01:08:12 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afe34cbee594391caef15f65357000f0b6f3f7330bfb233f478f9c713adad5`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bd0220c29c928f7bc4805487a305b37574085abce9b6449f76a04bf0e01664`  
		Last Modified: Sat, 29 Dec 2018 01:08:19 GMT  
		Size: 45.3 MB (45275769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c4860c7811f6e273e0fd1a3edfda9f0b7ccaae8ad8d1a01bbf644318b21d8`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b8dc880970437c710d565c1c838fe32ce1be2fff8d47ec15d782ebc4b2102d`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:8810d880385ae5e31fcd1a223db0d37f61e23ffcdfe17aaf1edbc5867a6786fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114576867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b1cb1dd7c78c8f0584712b8ef313a00d263a3e6e3ae46c27a2c75596123e7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:19:24 GMT
ADD file:0a45502ad7c85c18681995e30d3c7bede5bb2588ee7676cdfac0b5658b58dd2b in / 
# Tue, 20 Nov 2018 12:19:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:19:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:19:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:42:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:42:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:42:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:42:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:43:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:43:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:43:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 12:43:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:43:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:43:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:43:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:43:34 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:43:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8b6673ce01787770222ba44e80c245426fa22dce1db923a7600440a8e662c7b5`  
		Last Modified: Mon, 19 Nov 2018 15:08:24 GMT  
		Size: 64.9 MB (64852444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ba90163e5080b631c29a7ab22baa7601efe8096c36b25a544e07c6ad0a458c`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50599dda5b158258a1891b96a30b1eba38442a5e5234cfc2f20b89a8a1f40607`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a88bbc31c20d29dcff47385c8b7b8db4ac49f1adca63595a79ad3e571a5e4e`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b85fc000d9ef82818fe90a11eb0ba9190863b0e7d9e867d433f6642eb3e133`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad933fc852d68ea2b49fd2c8f0ee0b3b124c3f98cc0ee1dacd0276fcec075fc2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40004ce158704d626ff7008b43c951a9604525b8600d7a54905cb1492b41e2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.6 MB (1553018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b619d213153c234a4e579dab6f444fc308cd827a83eceb2bf4c5cf91285ffede`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599ddf9d899a8557b17092e2ffcd01e1668ca55273c09db6baf32e8711b9cc61`  
		Last Modified: Tue, 20 Nov 2018 12:45:34 GMT  
		Size: 4.2 MB (4248532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed1a5af71ada93ebfaf77be47da126e804a8d30e90ca70923f52f10e4ff261`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47042fbd7d55f35477930890020724cc6c8571fd181f645bcce2649ba8af4943`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d480952a4b132d630ed117322f3cb74bfab92e63338a8513e97eebe4b6b9e5e`  
		Last Modified: Tue, 20 Nov 2018 12:45:45 GMT  
		Size: 43.8 MB (43826976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad6d943e14413e2d9802d023940841f3d7711047e7af76912c6ef4ba6a5f4f0`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b106ddf5ec7163e66cdd62591cc170a9932523f4486dbe1b74088c160015301d`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:54c1412966269b28551f53ac2a3b5b06752e13550c4e689ebe86b07bcb185092
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9227ef9d75fd293b9cdaac9027805f936d48d49f9da6954e0275038002b2becd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:29:10 GMT
ADD file:28730c88b5e0cc8c4c5b4c4a9093a78de0973fa4912bc0016eeec96d1520b67a in / 
# Tue, 20 Nov 2018 09:30:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:30:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:30:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:30:31 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 11:03:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 11:04:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:04:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 11:04:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 11:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 11:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:05:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 11:05:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 11:05:31 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 11:05:32 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 11:05:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 11:06:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 11:07:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 11:07:39 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 11:07:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 11:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:08:08 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 11:08:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:188ad52886fad1892184a37c9deba8763109ea163b7e292d25797516b10548a4`  
		Last Modified: Tue, 20 Nov 2018 09:51:51 GMT  
		Size: 69.8 MB (69812482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352cf422f25052eaaefd68a1963c2de6a003cfbfcd9e28b2322ca0dea7f845e`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 63.4 KB (63420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4a446cc6d0e041a4127ba330296262d3c62b7205437a04ad6a9216e789f6d1`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575c1f3316dcbcc467054bea942e309f2d8397506a0f188c6a8a56db790c609d`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615d26876cd608eeeb73bd6f560eb5946a14791587fba84b4108a302b9cb7c9`  
		Last Modified: Tue, 20 Nov 2018 11:19:37 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb57bcd0abadf7b3956c800497568b3981cbf6da5953fb06896b0ed415e07b1`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6f1611997087a91ad226b92aeaa54b39acb7dab317f9d63f864e4bf8055f0a`  
		Last Modified: Tue, 20 Nov 2018 11:19:35 GMT  
		Size: 1.5 MB (1546181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d7f8da245a685961bd55208ab92fc4c1be817e6f5222f6e82ba912342cf9ae`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e20c83125f924528cac7fcf52c68bca0bec39bc564cbbd82567e12e417dbad`  
		Last Modified: Tue, 20 Nov 2018 11:19:36 GMT  
		Size: 4.3 MB (4287791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096502cf025ee5fa3fd8d2bbc6bd3d5cbc58eff5c07876c5e8a470d56ef8cc0`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b4c0f15e682d6a4c4930ab35e2a8ed77611f037894634ab43ad6369cb75b90`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf81723074c8341d97f77a34a8fba01bc32f5581812705c847737778015c22`  
		Last Modified: Tue, 20 Nov 2018 11:19:44 GMT  
		Size: 36.2 MB (36188936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9df5d4375e3810b3072a408a43b00602dfc486b38db2f1f41952f50ef8a8a7`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a420d5735d6d49fc0b713adf2213ec29198d065acd338c6fcdbcc329783eb7fb`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.62`

```console
$ docker pull mariadb@sha256:e07d6085b4171e009750afbb76620677ccc13f43a5ca391ba5f971cfb5e2c16b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.62` - linux; amd64

```console
$ docker pull mariadb@sha256:2142f3dfcf3cb756e00bdf1ea4d745f5cf558f5300a0595d0c66ea4c87a964d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa750959a2a767332b6a608fb39863a3c94667b32a0033fdccd23bb0aaddc740`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:05:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:05:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:05:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:05:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:05:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:39 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:05:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:05:40 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 29 Dec 2018 01:05:41 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Sat, 29 Dec 2018 01:05:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:05:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:05:56 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:05:56 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:05:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:05:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:05:57 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:05:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78932acd475fc14fe67dd092ff916ab1681c80523f59bb61ea101665ea7f952`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39025865673a71355e24f5fd5be593ae4c28f1afb29d59b4a077b9447cfee0ef`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cec40b3d514cae818816c403e8d1a89a5e230bc4578eb1a79c15de84313b88`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 1.6 MB (1573200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7a19885a98f7a36bcf6d861172814df0d783e6f4b4f30f2d820e1ae165fa57`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d593c6f87aa648a9823e6a0604b0135ded9100d4385a3c55a528f01329ae4910`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 4.3 MB (4262044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5aa1ebc5ed5fbd6962ca277293a1ea917482e366a8ce477731dbda33e88e49`  
		Last Modified: Sat, 29 Dec 2018 01:08:12 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afe34cbee594391caef15f65357000f0b6f3f7330bfb233f478f9c713adad5`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bd0220c29c928f7bc4805487a305b37574085abce9b6449f76a04bf0e01664`  
		Last Modified: Sat, 29 Dec 2018 01:08:19 GMT  
		Size: 45.3 MB (45275769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c4860c7811f6e273e0fd1a3edfda9f0b7ccaae8ad8d1a01bbf644318b21d8`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b8dc880970437c710d565c1c838fe32ce1be2fff8d47ec15d782ebc4b2102d`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62` - linux; 386

```console
$ docker pull mariadb@sha256:8810d880385ae5e31fcd1a223db0d37f61e23ffcdfe17aaf1edbc5867a6786fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114576867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b1cb1dd7c78c8f0584712b8ef313a00d263a3e6e3ae46c27a2c75596123e7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:19:24 GMT
ADD file:0a45502ad7c85c18681995e30d3c7bede5bb2588ee7676cdfac0b5658b58dd2b in / 
# Tue, 20 Nov 2018 12:19:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:19:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:19:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:42:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:42:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:42:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:42:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:43:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:43:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:43:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 12:43:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:43:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:43:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:43:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:43:34 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:43:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8b6673ce01787770222ba44e80c245426fa22dce1db923a7600440a8e662c7b5`  
		Last Modified: Mon, 19 Nov 2018 15:08:24 GMT  
		Size: 64.9 MB (64852444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ba90163e5080b631c29a7ab22baa7601efe8096c36b25a544e07c6ad0a458c`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50599dda5b158258a1891b96a30b1eba38442a5e5234cfc2f20b89a8a1f40607`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a88bbc31c20d29dcff47385c8b7b8db4ac49f1adca63595a79ad3e571a5e4e`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b85fc000d9ef82818fe90a11eb0ba9190863b0e7d9e867d433f6642eb3e133`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad933fc852d68ea2b49fd2c8f0ee0b3b124c3f98cc0ee1dacd0276fcec075fc2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40004ce158704d626ff7008b43c951a9604525b8600d7a54905cb1492b41e2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.6 MB (1553018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b619d213153c234a4e579dab6f444fc308cd827a83eceb2bf4c5cf91285ffede`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599ddf9d899a8557b17092e2ffcd01e1668ca55273c09db6baf32e8711b9cc61`  
		Last Modified: Tue, 20 Nov 2018 12:45:34 GMT  
		Size: 4.2 MB (4248532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed1a5af71ada93ebfaf77be47da126e804a8d30e90ca70923f52f10e4ff261`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47042fbd7d55f35477930890020724cc6c8571fd181f645bcce2649ba8af4943`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d480952a4b132d630ed117322f3cb74bfab92e63338a8513e97eebe4b6b9e5e`  
		Last Modified: Tue, 20 Nov 2018 12:45:45 GMT  
		Size: 43.8 MB (43826976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad6d943e14413e2d9802d023940841f3d7711047e7af76912c6ef4ba6a5f4f0`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b106ddf5ec7163e66cdd62591cc170a9932523f4486dbe1b74088c160015301d`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62` - linux; ppc64le

```console
$ docker pull mariadb@sha256:54c1412966269b28551f53ac2a3b5b06752e13550c4e689ebe86b07bcb185092
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9227ef9d75fd293b9cdaac9027805f936d48d49f9da6954e0275038002b2becd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:29:10 GMT
ADD file:28730c88b5e0cc8c4c5b4c4a9093a78de0973fa4912bc0016eeec96d1520b67a in / 
# Tue, 20 Nov 2018 09:30:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:30:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:30:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:30:31 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 11:03:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 11:04:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:04:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 11:04:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 11:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 11:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:05:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 11:05:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 11:05:31 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 11:05:32 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 11:05:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 11:06:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 11:07:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 11:07:39 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 11:07:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 11:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:08:08 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 11:08:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:188ad52886fad1892184a37c9deba8763109ea163b7e292d25797516b10548a4`  
		Last Modified: Tue, 20 Nov 2018 09:51:51 GMT  
		Size: 69.8 MB (69812482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352cf422f25052eaaefd68a1963c2de6a003cfbfcd9e28b2322ca0dea7f845e`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 63.4 KB (63420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4a446cc6d0e041a4127ba330296262d3c62b7205437a04ad6a9216e789f6d1`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575c1f3316dcbcc467054bea942e309f2d8397506a0f188c6a8a56db790c609d`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615d26876cd608eeeb73bd6f560eb5946a14791587fba84b4108a302b9cb7c9`  
		Last Modified: Tue, 20 Nov 2018 11:19:37 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb57bcd0abadf7b3956c800497568b3981cbf6da5953fb06896b0ed415e07b1`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6f1611997087a91ad226b92aeaa54b39acb7dab317f9d63f864e4bf8055f0a`  
		Last Modified: Tue, 20 Nov 2018 11:19:35 GMT  
		Size: 1.5 MB (1546181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d7f8da245a685961bd55208ab92fc4c1be817e6f5222f6e82ba912342cf9ae`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e20c83125f924528cac7fcf52c68bca0bec39bc564cbbd82567e12e417dbad`  
		Last Modified: Tue, 20 Nov 2018 11:19:36 GMT  
		Size: 4.3 MB (4287791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096502cf025ee5fa3fd8d2bbc6bd3d5cbc58eff5c07876c5e8a470d56ef8cc0`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b4c0f15e682d6a4c4930ab35e2a8ed77611f037894634ab43ad6369cb75b90`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf81723074c8341d97f77a34a8fba01bc32f5581812705c847737778015c22`  
		Last Modified: Tue, 20 Nov 2018 11:19:44 GMT  
		Size: 36.2 MB (36188936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9df5d4375e3810b3072a408a43b00602dfc486b38db2f1f41952f50ef8a8a7`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a420d5735d6d49fc0b713adf2213ec29198d065acd338c6fcdbcc329783eb7fb`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.62-trusty`

```console
$ docker pull mariadb@sha256:e07d6085b4171e009750afbb76620677ccc13f43a5ca391ba5f971cfb5e2c16b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.62-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:2142f3dfcf3cb756e00bdf1ea4d745f5cf558f5300a0595d0c66ea4c87a964d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa750959a2a767332b6a608fb39863a3c94667b32a0033fdccd23bb0aaddc740`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:05:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:05:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:05:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:05:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:05:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:39 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:05:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:05:40 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 29 Dec 2018 01:05:41 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Sat, 29 Dec 2018 01:05:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:05:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:05:56 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:05:56 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:05:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:05:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:05:57 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:05:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78932acd475fc14fe67dd092ff916ab1681c80523f59bb61ea101665ea7f952`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39025865673a71355e24f5fd5be593ae4c28f1afb29d59b4a077b9447cfee0ef`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cec40b3d514cae818816c403e8d1a89a5e230bc4578eb1a79c15de84313b88`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 1.6 MB (1573200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7a19885a98f7a36bcf6d861172814df0d783e6f4b4f30f2d820e1ae165fa57`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d593c6f87aa648a9823e6a0604b0135ded9100d4385a3c55a528f01329ae4910`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 4.3 MB (4262044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5aa1ebc5ed5fbd6962ca277293a1ea917482e366a8ce477731dbda33e88e49`  
		Last Modified: Sat, 29 Dec 2018 01:08:12 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afe34cbee594391caef15f65357000f0b6f3f7330bfb233f478f9c713adad5`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bd0220c29c928f7bc4805487a305b37574085abce9b6449f76a04bf0e01664`  
		Last Modified: Sat, 29 Dec 2018 01:08:19 GMT  
		Size: 45.3 MB (45275769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c4860c7811f6e273e0fd1a3edfda9f0b7ccaae8ad8d1a01bbf644318b21d8`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b8dc880970437c710d565c1c838fe32ce1be2fff8d47ec15d782ebc4b2102d`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:8810d880385ae5e31fcd1a223db0d37f61e23ffcdfe17aaf1edbc5867a6786fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114576867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b1cb1dd7c78c8f0584712b8ef313a00d263a3e6e3ae46c27a2c75596123e7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:19:24 GMT
ADD file:0a45502ad7c85c18681995e30d3c7bede5bb2588ee7676cdfac0b5658b58dd2b in / 
# Tue, 20 Nov 2018 12:19:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:19:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:19:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:42:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:42:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:42:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:42:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:43:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:43:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:43:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 12:43:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:43:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:43:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:43:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:43:34 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:43:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8b6673ce01787770222ba44e80c245426fa22dce1db923a7600440a8e662c7b5`  
		Last Modified: Mon, 19 Nov 2018 15:08:24 GMT  
		Size: 64.9 MB (64852444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ba90163e5080b631c29a7ab22baa7601efe8096c36b25a544e07c6ad0a458c`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50599dda5b158258a1891b96a30b1eba38442a5e5234cfc2f20b89a8a1f40607`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a88bbc31c20d29dcff47385c8b7b8db4ac49f1adca63595a79ad3e571a5e4e`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b85fc000d9ef82818fe90a11eb0ba9190863b0e7d9e867d433f6642eb3e133`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad933fc852d68ea2b49fd2c8f0ee0b3b124c3f98cc0ee1dacd0276fcec075fc2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40004ce158704d626ff7008b43c951a9604525b8600d7a54905cb1492b41e2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.6 MB (1553018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b619d213153c234a4e579dab6f444fc308cd827a83eceb2bf4c5cf91285ffede`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599ddf9d899a8557b17092e2ffcd01e1668ca55273c09db6baf32e8711b9cc61`  
		Last Modified: Tue, 20 Nov 2018 12:45:34 GMT  
		Size: 4.2 MB (4248532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed1a5af71ada93ebfaf77be47da126e804a8d30e90ca70923f52f10e4ff261`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47042fbd7d55f35477930890020724cc6c8571fd181f645bcce2649ba8af4943`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d480952a4b132d630ed117322f3cb74bfab92e63338a8513e97eebe4b6b9e5e`  
		Last Modified: Tue, 20 Nov 2018 12:45:45 GMT  
		Size: 43.8 MB (43826976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad6d943e14413e2d9802d023940841f3d7711047e7af76912c6ef4ba6a5f4f0`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b106ddf5ec7163e66cdd62591cc170a9932523f4486dbe1b74088c160015301d`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:54c1412966269b28551f53ac2a3b5b06752e13550c4e689ebe86b07bcb185092
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9227ef9d75fd293b9cdaac9027805f936d48d49f9da6954e0275038002b2becd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:29:10 GMT
ADD file:28730c88b5e0cc8c4c5b4c4a9093a78de0973fa4912bc0016eeec96d1520b67a in / 
# Tue, 20 Nov 2018 09:30:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:30:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:30:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:30:31 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 11:03:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 11:04:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:04:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 11:04:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 11:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 11:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:05:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 11:05:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 11:05:31 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 11:05:32 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 11:05:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 11:06:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 11:07:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 11:07:39 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 11:07:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 11:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:08:08 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 11:08:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:188ad52886fad1892184a37c9deba8763109ea163b7e292d25797516b10548a4`  
		Last Modified: Tue, 20 Nov 2018 09:51:51 GMT  
		Size: 69.8 MB (69812482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352cf422f25052eaaefd68a1963c2de6a003cfbfcd9e28b2322ca0dea7f845e`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 63.4 KB (63420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4a446cc6d0e041a4127ba330296262d3c62b7205437a04ad6a9216e789f6d1`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575c1f3316dcbcc467054bea942e309f2d8397506a0f188c6a8a56db790c609d`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615d26876cd608eeeb73bd6f560eb5946a14791587fba84b4108a302b9cb7c9`  
		Last Modified: Tue, 20 Nov 2018 11:19:37 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb57bcd0abadf7b3956c800497568b3981cbf6da5953fb06896b0ed415e07b1`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6f1611997087a91ad226b92aeaa54b39acb7dab317f9d63f864e4bf8055f0a`  
		Last Modified: Tue, 20 Nov 2018 11:19:35 GMT  
		Size: 1.5 MB (1546181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d7f8da245a685961bd55208ab92fc4c1be817e6f5222f6e82ba912342cf9ae`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e20c83125f924528cac7fcf52c68bca0bec39bc564cbbd82567e12e417dbad`  
		Last Modified: Tue, 20 Nov 2018 11:19:36 GMT  
		Size: 4.3 MB (4287791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096502cf025ee5fa3fd8d2bbc6bd3d5cbc58eff5c07876c5e8a470d56ef8cc0`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b4c0f15e682d6a4c4930ab35e2a8ed77611f037894634ab43ad6369cb75b90`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf81723074c8341d97f77a34a8fba01bc32f5581812705c847737778015c22`  
		Last Modified: Tue, 20 Nov 2018 11:19:44 GMT  
		Size: 36.2 MB (36188936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9df5d4375e3810b3072a408a43b00602dfc486b38db2f1f41952f50ef8a8a7`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a420d5735d6d49fc0b713adf2213ec29198d065acd338c6fcdbcc329783eb7fb`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:e07d6085b4171e009750afbb76620677ccc13f43a5ca391ba5f971cfb5e2c16b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:2142f3dfcf3cb756e00bdf1ea4d745f5cf558f5300a0595d0c66ea4c87a964d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa750959a2a767332b6a608fb39863a3c94667b32a0033fdccd23bb0aaddc740`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:05:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:05:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:05:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:05:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:05:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:39 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:05:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:05:40 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 29 Dec 2018 01:05:41 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Sat, 29 Dec 2018 01:05:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:05:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:05:56 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:05:56 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:05:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:05:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:05:57 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:05:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78932acd475fc14fe67dd092ff916ab1681c80523f59bb61ea101665ea7f952`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39025865673a71355e24f5fd5be593ae4c28f1afb29d59b4a077b9447cfee0ef`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cec40b3d514cae818816c403e8d1a89a5e230bc4578eb1a79c15de84313b88`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 1.6 MB (1573200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7a19885a98f7a36bcf6d861172814df0d783e6f4b4f30f2d820e1ae165fa57`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d593c6f87aa648a9823e6a0604b0135ded9100d4385a3c55a528f01329ae4910`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 4.3 MB (4262044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5aa1ebc5ed5fbd6962ca277293a1ea917482e366a8ce477731dbda33e88e49`  
		Last Modified: Sat, 29 Dec 2018 01:08:12 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afe34cbee594391caef15f65357000f0b6f3f7330bfb233f478f9c713adad5`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bd0220c29c928f7bc4805487a305b37574085abce9b6449f76a04bf0e01664`  
		Last Modified: Sat, 29 Dec 2018 01:08:19 GMT  
		Size: 45.3 MB (45275769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c4860c7811f6e273e0fd1a3edfda9f0b7ccaae8ad8d1a01bbf644318b21d8`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b8dc880970437c710d565c1c838fe32ce1be2fff8d47ec15d782ebc4b2102d`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:8810d880385ae5e31fcd1a223db0d37f61e23ffcdfe17aaf1edbc5867a6786fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114576867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b1cb1dd7c78c8f0584712b8ef313a00d263a3e6e3ae46c27a2c75596123e7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:19:24 GMT
ADD file:0a45502ad7c85c18681995e30d3c7bede5bb2588ee7676cdfac0b5658b58dd2b in / 
# Tue, 20 Nov 2018 12:19:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:19:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:19:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:42:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:42:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:42:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:42:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:43:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:43:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:43:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 12:43:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:43:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:43:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:43:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:43:34 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:43:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8b6673ce01787770222ba44e80c245426fa22dce1db923a7600440a8e662c7b5`  
		Last Modified: Mon, 19 Nov 2018 15:08:24 GMT  
		Size: 64.9 MB (64852444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ba90163e5080b631c29a7ab22baa7601efe8096c36b25a544e07c6ad0a458c`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50599dda5b158258a1891b96a30b1eba38442a5e5234cfc2f20b89a8a1f40607`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a88bbc31c20d29dcff47385c8b7b8db4ac49f1adca63595a79ad3e571a5e4e`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b85fc000d9ef82818fe90a11eb0ba9190863b0e7d9e867d433f6642eb3e133`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad933fc852d68ea2b49fd2c8f0ee0b3b124c3f98cc0ee1dacd0276fcec075fc2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40004ce158704d626ff7008b43c951a9604525b8600d7a54905cb1492b41e2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.6 MB (1553018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b619d213153c234a4e579dab6f444fc308cd827a83eceb2bf4c5cf91285ffede`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599ddf9d899a8557b17092e2ffcd01e1668ca55273c09db6baf32e8711b9cc61`  
		Last Modified: Tue, 20 Nov 2018 12:45:34 GMT  
		Size: 4.2 MB (4248532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed1a5af71ada93ebfaf77be47da126e804a8d30e90ca70923f52f10e4ff261`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47042fbd7d55f35477930890020724cc6c8571fd181f645bcce2649ba8af4943`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d480952a4b132d630ed117322f3cb74bfab92e63338a8513e97eebe4b6b9e5e`  
		Last Modified: Tue, 20 Nov 2018 12:45:45 GMT  
		Size: 43.8 MB (43826976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad6d943e14413e2d9802d023940841f3d7711047e7af76912c6ef4ba6a5f4f0`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b106ddf5ec7163e66cdd62591cc170a9932523f4486dbe1b74088c160015301d`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:54c1412966269b28551f53ac2a3b5b06752e13550c4e689ebe86b07bcb185092
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9227ef9d75fd293b9cdaac9027805f936d48d49f9da6954e0275038002b2becd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:29:10 GMT
ADD file:28730c88b5e0cc8c4c5b4c4a9093a78de0973fa4912bc0016eeec96d1520b67a in / 
# Tue, 20 Nov 2018 09:30:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:30:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:30:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:30:31 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 11:03:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 11:04:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:04:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 11:04:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 11:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 11:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:05:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 11:05:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 11:05:31 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 11:05:32 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 11:05:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 11:06:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 11:07:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 11:07:39 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 11:07:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 11:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:08:08 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 11:08:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:188ad52886fad1892184a37c9deba8763109ea163b7e292d25797516b10548a4`  
		Last Modified: Tue, 20 Nov 2018 09:51:51 GMT  
		Size: 69.8 MB (69812482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352cf422f25052eaaefd68a1963c2de6a003cfbfcd9e28b2322ca0dea7f845e`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 63.4 KB (63420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4a446cc6d0e041a4127ba330296262d3c62b7205437a04ad6a9216e789f6d1`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575c1f3316dcbcc467054bea942e309f2d8397506a0f188c6a8a56db790c609d`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615d26876cd608eeeb73bd6f560eb5946a14791587fba84b4108a302b9cb7c9`  
		Last Modified: Tue, 20 Nov 2018 11:19:37 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb57bcd0abadf7b3956c800497568b3981cbf6da5953fb06896b0ed415e07b1`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6f1611997087a91ad226b92aeaa54b39acb7dab317f9d63f864e4bf8055f0a`  
		Last Modified: Tue, 20 Nov 2018 11:19:35 GMT  
		Size: 1.5 MB (1546181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d7f8da245a685961bd55208ab92fc4c1be817e6f5222f6e82ba912342cf9ae`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e20c83125f924528cac7fcf52c68bca0bec39bc564cbbd82567e12e417dbad`  
		Last Modified: Tue, 20 Nov 2018 11:19:36 GMT  
		Size: 4.3 MB (4287791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096502cf025ee5fa3fd8d2bbc6bd3d5cbc58eff5c07876c5e8a470d56ef8cc0`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b4c0f15e682d6a4c4930ab35e2a8ed77611f037894634ab43ad6369cb75b90`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf81723074c8341d97f77a34a8fba01bc32f5581812705c847737778015c22`  
		Last Modified: Tue, 20 Nov 2018 11:19:44 GMT  
		Size: 36.2 MB (36188936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9df5d4375e3810b3072a408a43b00602dfc486b38db2f1f41952f50ef8a8a7`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a420d5735d6d49fc0b713adf2213ec29198d065acd338c6fcdbcc329783eb7fb`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:e07d6085b4171e009750afbb76620677ccc13f43a5ca391ba5f971cfb5e2c16b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:2142f3dfcf3cb756e00bdf1ea4d745f5cf558f5300a0595d0c66ea4c87a964d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa750959a2a767332b6a608fb39863a3c94667b32a0033fdccd23bb0aaddc740`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:05:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:05:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:05:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:05:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:05:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:05:39 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:05:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:05:40 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 29 Dec 2018 01:05:41 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Sat, 29 Dec 2018 01:05:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:05:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:05:56 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:05:56 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:05:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:05:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:05:57 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:05:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78932acd475fc14fe67dd092ff916ab1681c80523f59bb61ea101665ea7f952`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39025865673a71355e24f5fd5be593ae4c28f1afb29d59b4a077b9447cfee0ef`  
		Last Modified: Sat, 29 Dec 2018 01:08:14 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cec40b3d514cae818816c403e8d1a89a5e230bc4578eb1a79c15de84313b88`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 1.6 MB (1573200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7a19885a98f7a36bcf6d861172814df0d783e6f4b4f30f2d820e1ae165fa57`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d593c6f87aa648a9823e6a0604b0135ded9100d4385a3c55a528f01329ae4910`  
		Last Modified: Sat, 29 Dec 2018 01:08:13 GMT  
		Size: 4.3 MB (4262044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5aa1ebc5ed5fbd6962ca277293a1ea917482e366a8ce477731dbda33e88e49`  
		Last Modified: Sat, 29 Dec 2018 01:08:12 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5afe34cbee594391caef15f65357000f0b6f3f7330bfb233f478f9c713adad5`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bd0220c29c928f7bc4805487a305b37574085abce9b6449f76a04bf0e01664`  
		Last Modified: Sat, 29 Dec 2018 01:08:19 GMT  
		Size: 45.3 MB (45275769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1c4860c7811f6e273e0fd1a3edfda9f0b7ccaae8ad8d1a01bbf644318b21d8`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b8dc880970437c710d565c1c838fe32ce1be2fff8d47ec15d782ebc4b2102d`  
		Last Modified: Sat, 29 Dec 2018 01:08:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:8810d880385ae5e31fcd1a223db0d37f61e23ffcdfe17aaf1edbc5867a6786fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114576867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b1cb1dd7c78c8f0584712b8ef313a00d263a3e6e3ae46c27a2c75596123e7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 12:19:24 GMT
ADD file:0a45502ad7c85c18681995e30d3c7bede5bb2588ee7676cdfac0b5658b58dd2b in / 
# Tue, 20 Nov 2018 12:19:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:19:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:19:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:42:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 12:42:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:42:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 12:42:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 12:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 12:43:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:43:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 12:43:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 12:43:14 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 12:43:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 12:43:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 12:43:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 12:43:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 12:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 12:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 12:43:34 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 12:43:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8b6673ce01787770222ba44e80c245426fa22dce1db923a7600440a8e662c7b5`  
		Last Modified: Mon, 19 Nov 2018 15:08:24 GMT  
		Size: 64.9 MB (64852444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ba90163e5080b631c29a7ab22baa7601efe8096c36b25a544e07c6ad0a458c`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50599dda5b158258a1891b96a30b1eba38442a5e5234cfc2f20b89a8a1f40607`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a88bbc31c20d29dcff47385c8b7b8db4ac49f1adca63595a79ad3e571a5e4e`  
		Last Modified: Tue, 20 Nov 2018 12:23:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b85fc000d9ef82818fe90a11eb0ba9190863b0e7d9e867d433f6642eb3e133`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad933fc852d68ea2b49fd2c8f0ee0b3b124c3f98cc0ee1dacd0276fcec075fc2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab40004ce158704d626ff7008b43c951a9604525b8600d7a54905cb1492b41e2`  
		Last Modified: Tue, 20 Nov 2018 12:45:33 GMT  
		Size: 1.6 MB (1553018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b619d213153c234a4e579dab6f444fc308cd827a83eceb2bf4c5cf91285ffede`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599ddf9d899a8557b17092e2ffcd01e1668ca55273c09db6baf32e8711b9cc61`  
		Last Modified: Tue, 20 Nov 2018 12:45:34 GMT  
		Size: 4.2 MB (4248532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed1a5af71ada93ebfaf77be47da126e804a8d30e90ca70923f52f10e4ff261`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47042fbd7d55f35477930890020724cc6c8571fd181f645bcce2649ba8af4943`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d480952a4b132d630ed117322f3cb74bfab92e63338a8513e97eebe4b6b9e5e`  
		Last Modified: Tue, 20 Nov 2018 12:45:45 GMT  
		Size: 43.8 MB (43826976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad6d943e14413e2d9802d023940841f3d7711047e7af76912c6ef4ba6a5f4f0`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b106ddf5ec7163e66cdd62591cc170a9932523f4486dbe1b74088c160015301d`  
		Last Modified: Tue, 20 Nov 2018 12:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:54c1412966269b28551f53ac2a3b5b06752e13550c4e689ebe86b07bcb185092
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9227ef9d75fd293b9cdaac9027805f936d48d49f9da6954e0275038002b2becd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:29:10 GMT
ADD file:28730c88b5e0cc8c4c5b4c4a9093a78de0973fa4912bc0016eeec96d1520b67a in / 
# Tue, 20 Nov 2018 09:30:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:30:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:30:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:30:31 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 11:03:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 11:04:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:04:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 11:04:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 11:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 11:05:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:05:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 11:05:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 11:05:31 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 20 Nov 2018 11:05:32 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Tue, 20 Nov 2018 11:05:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 20 Nov 2018 11:06:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 20 Nov 2018 11:07:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 20 Nov 2018 11:07:39 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Tue, 20 Nov 2018 11:07:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Nov 2018 11:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:08:08 GMT
EXPOSE 3306/tcp
# Tue, 20 Nov 2018 11:08:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:188ad52886fad1892184a37c9deba8763109ea163b7e292d25797516b10548a4`  
		Last Modified: Tue, 20 Nov 2018 09:51:51 GMT  
		Size: 69.8 MB (69812482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352cf422f25052eaaefd68a1963c2de6a003cfbfcd9e28b2322ca0dea7f845e`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 63.4 KB (63420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4a446cc6d0e041a4127ba330296262d3c62b7205437a04ad6a9216e789f6d1`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575c1f3316dcbcc467054bea942e309f2d8397506a0f188c6a8a56db790c609d`  
		Last Modified: Tue, 20 Nov 2018 09:51:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615d26876cd608eeeb73bd6f560eb5946a14791587fba84b4108a302b9cb7c9`  
		Last Modified: Tue, 20 Nov 2018 11:19:37 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb57bcd0abadf7b3956c800497568b3981cbf6da5953fb06896b0ed415e07b1`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6f1611997087a91ad226b92aeaa54b39acb7dab317f9d63f864e4bf8055f0a`  
		Last Modified: Tue, 20 Nov 2018 11:19:35 GMT  
		Size: 1.5 MB (1546181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d7f8da245a685961bd55208ab92fc4c1be817e6f5222f6e82ba912342cf9ae`  
		Last Modified: Tue, 20 Nov 2018 11:19:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e20c83125f924528cac7fcf52c68bca0bec39bc564cbbd82567e12e417dbad`  
		Last Modified: Tue, 20 Nov 2018 11:19:36 GMT  
		Size: 4.3 MB (4287791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096502cf025ee5fa3fd8d2bbc6bd3d5cbc58eff5c07876c5e8a470d56ef8cc0`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b4c0f15e682d6a4c4930ab35e2a8ed77611f037894634ab43ad6369cb75b90`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf81723074c8341d97f77a34a8fba01bc32f5581812705c847737778015c22`  
		Last Modified: Tue, 20 Nov 2018 11:19:44 GMT  
		Size: 36.2 MB (36188936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9df5d4375e3810b3072a408a43b00602dfc486b38db2f1f41952f50ef8a8a7`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a420d5735d6d49fc0b713adf2213ec29198d065acd338c6fcdbcc329783eb7fb`  
		Last Modified: Tue, 20 Nov 2018 11:19:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
