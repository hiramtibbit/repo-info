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
-	[`mariadb:10.2.21`](#mariadb10221)
-	[`mariadb:10.2.21-bionic`](#mariadb10221-bionic)
-	[`mariadb:10.2-bionic`](#mariadb102-bionic)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.12`](#mariadb10312)
-	[`mariadb:10.3.12-bionic`](#mariadb10312-bionic)
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
$ docker pull mariadb@sha256:eb6acf7f599f39c42582e11b1de3866c3934da84cc45190c0aac3e8d046e4053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:4db64a621651412b2525104506a1f5901ef76bd5a62257bd818c37cbb2a300fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901583bfdf5a129ba68b033c989dab7f10d2a9235c3a2093ad16f9ac979ac9f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 09:23:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:57 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:58 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d8b012ee89a3520f70fa031173a97e202d2e12ff98724f07f70f28ad162a2`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb787f18e3dea59864cf49e69608d134729d73deef1962694d411fdd624dae0`  
		Last Modified: Wed, 23 Jan 2019 09:29:23 GMT  
		Size: 74.3 MB (74279087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cfbee5299afb101c2b94b809d3bcfbc606a41b840423f0e5de5092b3e7171`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa7c8911619901874e6492188248c5058d9981d216e5f672c9634b9ee313aeb`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7da7e03a4751718b384a53b9cb6127be5b999ba538a2c29f4024b03e6b4cb759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568c7d36f080aa16bfd13b65c6a0ab316ff9aaed64b70bb3faa07b53b26371b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:05:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 11:05:03 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 11:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:07:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:07:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:07:36 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:07:44 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:07:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a4fc52a6afed9d96d9fad7cb3914d605a23120e01f10065bdab40a6ba3c64`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe10808173c8a0935398d649770c3cc75df0e465b2d96ddfc2dd043eef72443`  
		Last Modified: Fri, 25 Jan 2019 00:29:57 GMT  
		Size: 73.2 MB (73196318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13e66a5aca666bf56e6e99ae3eda0112f2e2b60a2e11f98789042bdb1a23b1`  
		Last Modified: Fri, 25 Jan 2019 00:29:07 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4452cdefbc13aa6e2fc39cc94146305b31f35b0c3b421b075a4da6510909d2`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f709b0c43d2d84d51c3f5bf7aa850819ae1219730ff0bc5614823f2655cbda2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122191961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617bf0c1f31e1c8ca9eba340a23cde7b522aec0751c8fc13fb5713bf8ffdf23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:05:07 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 10:05:10 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 10:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:07:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:07:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:07:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:08:12 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:08:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac150ce70eea4470c7851537943633bc6256f0ca4e64af72f7d474e6fe6b8d`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceebeb61511d80a4da9e238efd0a0536366f8de28c092460769885d6ac979094`  
		Last Modified: Wed, 23 Jan 2019 10:25:36 GMT  
		Size: 77.2 MB (77196004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476fbd672db08f5bdeb784274e261fbe136c61d66c12f2b7d792299d524ee08`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd105b81f56e86bed64b506d86d0c52c48e09742348f31572152c998fc538b0f`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:5465f541b73e53427f52afa01846906a239b03a463a69115c8b03e542694181b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:4e7ec2c29c983386a481b949340e3c45ed22f9d23c7ead89c9ac3f0e47448bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116117773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdac8ec3333b4fa6a2b9f7bf92fd56b5b2a3180e105089919e523205858cb2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:25:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:25:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:26:16 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:26:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:26:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:26:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:26:38 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 23 Jan 2019 09:26:38 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Wed, 23 Jan 2019 09:26:40 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:27:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:27:27 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:27:28 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:27:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:27:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:27:29 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:27:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00af4a8d648bb79c2d88ae384df640655a9e4f55ab74d5a56eb0901ab082e534`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d19bd3b6a7917b013cb1180c225b6970b03f29041f94129bd5d205d034587`  
		Last Modified: Wed, 23 Jan 2019 09:30:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5622b083461e3160c226f3e7423a707757a51b273cd59a32a9704cc0456ef465`  
		Last Modified: Wed, 23 Jan 2019 09:30:39 GMT  
		Size: 840.3 KB (840308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b61740a214695ee0b7d963dfdf5dc7115c762ec438d37ab9447f247fbb183`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeadad4e441aa02ed41190a7689e035c7cdcb982f7b1da883ab4e2e422e5372e`  
		Last Modified: Wed, 23 Jan 2019 09:30:41 GMT  
		Size: 7.3 MB (7321643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7675c926e11ec167850feef30ab7fb71eb9ed26ef64dae3941a0280ada5097a4`  
		Last Modified: Wed, 23 Jan 2019 09:30:34 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4861ab37a742c720e5b98d2d7c9cac85ffe1216557b04dc4a31858b3d56b8564`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67e1b8a12ca163d0b33418ed091118e6e8cad32f43bd7c2c16812a7a268da59`  
		Last Modified: Wed, 23 Jan 2019 09:30:53 GMT  
		Size: 64.4 MB (64401984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6605b35e528db0f3fb0090ed2903718397bf01c2f2ef66de5dd96e75265d2`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ba7cab6168a567a6ee38f0f4f25e09c4e44cb5555e71954a752d79242be73a`  
		Last Modified: Wed, 23 Jan 2019 09:30:34 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:62515517791c499ba845f7b1b08cbd8fe456ac52cf52015104893017720ccefa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99113618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6cf8ece760aa9147664929f1a5fa8b41efd07470efd65206fbc2c48bb901c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:46:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:46:48 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:46:49 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:47:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:47:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:48:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:48:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:48:54 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 29 Dec 2018 10:48:54 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 29 Dec 2018 10:48:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:51:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:51:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:51:17 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:51:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:51:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:51:21 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:51:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7de872035f372987c8c1ed77c7ea06cc59086b2a97e13c3885e5653c496f1d`  
		Last Modified: Sat, 29 Dec 2018 10:55:09 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05224363ab57560d85a4ca32245b99002579f0029b1133343303a8a9fbce590`  
		Last Modified: Sat, 29 Dec 2018 10:55:05 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca4699adcbd83b2bbd8ca72fadcd799980373966f97bcb6a02d797085c682e`  
		Last Modified: Sat, 29 Dec 2018 10:55:06 GMT  
		Size: 807.4 KB (807370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f146711436624a7b87af90d9aa5bdd53eff421758a5495aeb60fa74fdf27c3`  
		Last Modified: Sat, 29 Dec 2018 10:55:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3d6dc62fd8d3cf366c974c1a38463a960ab19eef3fed3d74532781666d8ef5`  
		Last Modified: Sat, 29 Dec 2018 10:55:07 GMT  
		Size: 6.4 MB (6404902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cfb8586321991cfb94d1d5583e611d86c52bcfc9b6e0df4c6af4d7632062ee`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1869346c0dd1e8c683e2c56c566b7935b614742b00cb6a909b51eabe0676d1`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfd853f3a0e2784055e5e3b4df95e20a196ffbcb4d8f6c0637bb270d6ad62a5`  
		Last Modified: Sat, 29 Dec 2018 10:55:24 GMT  
		Size: 52.4 MB (52361590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6646e3a9e699557ce496336c87eb433a46fe229d1c1c4fd604ef9369a44c5256`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d4e624e2b8cfb9afa8c12d7f585fc8b9b4625262a99963e93108a201b03a6f`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:46a6afb04c53e38907b43441a5128d179f95a495e797c1f7f2afb6bc7d7eb8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114781973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebbf89df13e533b4dd52a85fe3eaf42e69b825e0428a5867cce612b7395ce4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:15:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:15:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:15:20 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:15:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:44 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:15:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Thu, 24 Jan 2019 00:15:47 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:16:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:16:38 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:16:38 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:16:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:16:39 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:16:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d85737291207cf017da2e99a0863d1cf39f8738ff5efc27d1e373bd348629`  
		Last Modified: Thu, 24 Jan 2019 00:18:10 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4101243177fd4943cf09302e71a526bba67931a1185ac9b7f20be53efcac6f77`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a41f9e25f2d0120998f8877ba3ee435c76c6e802b8ad72105fa8b5494482e`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 819.3 KB (819349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800718b75493fbea0398c68114afd5c0129d9da119469b5e3c4a5cc4fac6fc2`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443f5dba808c6ffebb5eae38a48f6441b21c63debe129dcb94b3fb6898e5234`  
		Last Modified: Thu, 24 Jan 2019 00:18:12 GMT  
		Size: 7.5 MB (7450649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb470299560ddd052b6efcc07a2b4394fa65bd1526393acbc4a562eff18f401`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201a4e97c89f1f2e28c31b5ab12764daaf1cdde1bf14b1a78b1a1487bef90360`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0d1a18d29ebe4f736e0b46b427f2eae4ed89850ab35ef712be7c064e6c5703`  
		Last Modified: Thu, 24 Jan 2019 00:18:26 GMT  
		Size: 62.7 MB (62745128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0747904b9fb2f4110b1515fb7761a69391633511d454378007bda94205354167`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1a347161550183e41e48b6c333d82e4b21276738601dad5f5a65758424239d`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bf51d6a284904806d428771ab6f499904d8d62606e5c6cf87d7403d417aa492f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109430592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e744468b00c03ef076750f1719ea7a0c5eab9b65137604dfda8afe7b0fb7ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:13:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:14:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:14:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:14:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:14:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:16:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:16:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:16:23 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 23 Jan 2019 10:16:26 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Wed, 23 Jan 2019 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:18:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:18:53 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:18:55 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:19:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:19:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:19:11 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:19:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9ea9aca3f3569cab1818edd534176fd4f017c1eb1f223f9441134c42ed3b15`  
		Last Modified: Wed, 23 Jan 2019 10:27:27 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0b66ed81b46deb75b63bd31b4b08f9b6d6e384fa34b927af9446cc482ceae0`  
		Last Modified: Wed, 23 Jan 2019 10:27:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32850e5dda4b5e6d9a19e5e1ff98c9b42adc1762c3adb6944202350c7c926682`  
		Last Modified: Wed, 23 Jan 2019 10:27:25 GMT  
		Size: 808.9 KB (808945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4fe23050e3660d1c97941ca5bcb94ddf1a0c70d023fdf8124ea0b37440a29`  
		Last Modified: Wed, 23 Jan 2019 10:27:24 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbc6023d10eb1b0a994fd54763b850f37c958c96314e49313a1d575e26ada87`  
		Last Modified: Wed, 23 Jan 2019 10:27:26 GMT  
		Size: 7.2 MB (7210755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c76d26c2f751e6fec124c24328865d56c51a3ded962303744a3901c2431a6b5`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5d49437169c03ab8db4cd6dc68420c408f8c84f2f5c8e5b1f90820e6df1a0`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9fee849f3509051ba7bac9ab187cb5795d1875bd299d52c11f9c49e752f74d`  
		Last Modified: Wed, 23 Jan 2019 10:27:35 GMT  
		Size: 55.6 MB (55622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96b78f40599adedacc416570d5ad3f637b6a5c9a4ad62632f444eee35c492`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effdf3ac0a968a68c3d5409581b23ddfb4e11cf46e6d699d4177947d9cf56eb3`  
		Last Modified: Wed, 23 Jan 2019 10:27:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.37`

```console
$ docker pull mariadb@sha256:5465f541b73e53427f52afa01846906a239b03a463a69115c8b03e542694181b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.37` - linux; amd64

```console
$ docker pull mariadb@sha256:4e7ec2c29c983386a481b949340e3c45ed22f9d23c7ead89c9ac3f0e47448bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116117773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdac8ec3333b4fa6a2b9f7bf92fd56b5b2a3180e105089919e523205858cb2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:25:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:25:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:26:16 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:26:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:26:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:26:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:26:38 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 23 Jan 2019 09:26:38 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Wed, 23 Jan 2019 09:26:40 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:27:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:27:27 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:27:28 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:27:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:27:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:27:29 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:27:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00af4a8d648bb79c2d88ae384df640655a9e4f55ab74d5a56eb0901ab082e534`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d19bd3b6a7917b013cb1180c225b6970b03f29041f94129bd5d205d034587`  
		Last Modified: Wed, 23 Jan 2019 09:30:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5622b083461e3160c226f3e7423a707757a51b273cd59a32a9704cc0456ef465`  
		Last Modified: Wed, 23 Jan 2019 09:30:39 GMT  
		Size: 840.3 KB (840308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b61740a214695ee0b7d963dfdf5dc7115c762ec438d37ab9447f247fbb183`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeadad4e441aa02ed41190a7689e035c7cdcb982f7b1da883ab4e2e422e5372e`  
		Last Modified: Wed, 23 Jan 2019 09:30:41 GMT  
		Size: 7.3 MB (7321643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7675c926e11ec167850feef30ab7fb71eb9ed26ef64dae3941a0280ada5097a4`  
		Last Modified: Wed, 23 Jan 2019 09:30:34 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4861ab37a742c720e5b98d2d7c9cac85ffe1216557b04dc4a31858b3d56b8564`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67e1b8a12ca163d0b33418ed091118e6e8cad32f43bd7c2c16812a7a268da59`  
		Last Modified: Wed, 23 Jan 2019 09:30:53 GMT  
		Size: 64.4 MB (64401984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6605b35e528db0f3fb0090ed2903718397bf01c2f2ef66de5dd96e75265d2`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ba7cab6168a567a6ee38f0f4f25e09c4e44cb5555e71954a752d79242be73a`  
		Last Modified: Wed, 23 Jan 2019 09:30:34 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:62515517791c499ba845f7b1b08cbd8fe456ac52cf52015104893017720ccefa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99113618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6cf8ece760aa9147664929f1a5fa8b41efd07470efd65206fbc2c48bb901c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:46:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:46:48 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:46:49 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:47:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:47:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:48:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:48:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:48:54 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 29 Dec 2018 10:48:54 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 29 Dec 2018 10:48:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:51:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:51:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:51:17 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:51:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:51:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:51:21 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:51:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7de872035f372987c8c1ed77c7ea06cc59086b2a97e13c3885e5653c496f1d`  
		Last Modified: Sat, 29 Dec 2018 10:55:09 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05224363ab57560d85a4ca32245b99002579f0029b1133343303a8a9fbce590`  
		Last Modified: Sat, 29 Dec 2018 10:55:05 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca4699adcbd83b2bbd8ca72fadcd799980373966f97bcb6a02d797085c682e`  
		Last Modified: Sat, 29 Dec 2018 10:55:06 GMT  
		Size: 807.4 KB (807370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f146711436624a7b87af90d9aa5bdd53eff421758a5495aeb60fa74fdf27c3`  
		Last Modified: Sat, 29 Dec 2018 10:55:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3d6dc62fd8d3cf366c974c1a38463a960ab19eef3fed3d74532781666d8ef5`  
		Last Modified: Sat, 29 Dec 2018 10:55:07 GMT  
		Size: 6.4 MB (6404902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cfb8586321991cfb94d1d5583e611d86c52bcfc9b6e0df4c6af4d7632062ee`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1869346c0dd1e8c683e2c56c566b7935b614742b00cb6a909b51eabe0676d1`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfd853f3a0e2784055e5e3b4df95e20a196ffbcb4d8f6c0637bb270d6ad62a5`  
		Last Modified: Sat, 29 Dec 2018 10:55:24 GMT  
		Size: 52.4 MB (52361590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6646e3a9e699557ce496336c87eb433a46fe229d1c1c4fd604ef9369a44c5256`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d4e624e2b8cfb9afa8c12d7f585fc8b9b4625262a99963e93108a201b03a6f`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; 386

```console
$ docker pull mariadb@sha256:46a6afb04c53e38907b43441a5128d179f95a495e797c1f7f2afb6bc7d7eb8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114781973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebbf89df13e533b4dd52a85fe3eaf42e69b825e0428a5867cce612b7395ce4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:15:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:15:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:15:20 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:15:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:44 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:15:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Thu, 24 Jan 2019 00:15:47 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:16:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:16:38 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:16:38 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:16:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:16:39 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:16:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d85737291207cf017da2e99a0863d1cf39f8738ff5efc27d1e373bd348629`  
		Last Modified: Thu, 24 Jan 2019 00:18:10 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4101243177fd4943cf09302e71a526bba67931a1185ac9b7f20be53efcac6f77`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a41f9e25f2d0120998f8877ba3ee435c76c6e802b8ad72105fa8b5494482e`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 819.3 KB (819349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800718b75493fbea0398c68114afd5c0129d9da119469b5e3c4a5cc4fac6fc2`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443f5dba808c6ffebb5eae38a48f6441b21c63debe129dcb94b3fb6898e5234`  
		Last Modified: Thu, 24 Jan 2019 00:18:12 GMT  
		Size: 7.5 MB (7450649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb470299560ddd052b6efcc07a2b4394fa65bd1526393acbc4a562eff18f401`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201a4e97c89f1f2e28c31b5ab12764daaf1cdde1bf14b1a78b1a1487bef90360`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0d1a18d29ebe4f736e0b46b427f2eae4ed89850ab35ef712be7c064e6c5703`  
		Last Modified: Thu, 24 Jan 2019 00:18:26 GMT  
		Size: 62.7 MB (62745128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0747904b9fb2f4110b1515fb7761a69391633511d454378007bda94205354167`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1a347161550183e41e48b6c333d82e4b21276738601dad5f5a65758424239d`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bf51d6a284904806d428771ab6f499904d8d62606e5c6cf87d7403d417aa492f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109430592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e744468b00c03ef076750f1719ea7a0c5eab9b65137604dfda8afe7b0fb7ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:13:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:14:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:14:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:14:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:14:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:16:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:16:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:16:23 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 23 Jan 2019 10:16:26 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Wed, 23 Jan 2019 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:18:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:18:53 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:18:55 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:19:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:19:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:19:11 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:19:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9ea9aca3f3569cab1818edd534176fd4f017c1eb1f223f9441134c42ed3b15`  
		Last Modified: Wed, 23 Jan 2019 10:27:27 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0b66ed81b46deb75b63bd31b4b08f9b6d6e384fa34b927af9446cc482ceae0`  
		Last Modified: Wed, 23 Jan 2019 10:27:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32850e5dda4b5e6d9a19e5e1ff98c9b42adc1762c3adb6944202350c7c926682`  
		Last Modified: Wed, 23 Jan 2019 10:27:25 GMT  
		Size: 808.9 KB (808945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4fe23050e3660d1c97941ca5bcb94ddf1a0c70d023fdf8124ea0b37440a29`  
		Last Modified: Wed, 23 Jan 2019 10:27:24 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbc6023d10eb1b0a994fd54763b850f37c958c96314e49313a1d575e26ada87`  
		Last Modified: Wed, 23 Jan 2019 10:27:26 GMT  
		Size: 7.2 MB (7210755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c76d26c2f751e6fec124c24328865d56c51a3ded962303744a3901c2431a6b5`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5d49437169c03ab8db4cd6dc68420c408f8c84f2f5c8e5b1f90820e6df1a0`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9fee849f3509051ba7bac9ab187cb5795d1875bd299d52c11f9c49e752f74d`  
		Last Modified: Wed, 23 Jan 2019 10:27:35 GMT  
		Size: 55.6 MB (55622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96b78f40599adedacc416570d5ad3f637b6a5c9a4ad62632f444eee35c492`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effdf3ac0a968a68c3d5409581b23ddfb4e11cf46e6d699d4177947d9cf56eb3`  
		Last Modified: Wed, 23 Jan 2019 10:27:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.37-xenial`

```console
$ docker pull mariadb@sha256:5465f541b73e53427f52afa01846906a239b03a463a69115c8b03e542694181b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.37-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:4e7ec2c29c983386a481b949340e3c45ed22f9d23c7ead89c9ac3f0e47448bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116117773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdac8ec3333b4fa6a2b9f7bf92fd56b5b2a3180e105089919e523205858cb2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:25:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:25:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:26:16 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:26:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:26:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:26:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:26:38 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 23 Jan 2019 09:26:38 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Wed, 23 Jan 2019 09:26:40 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:27:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:27:27 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:27:28 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:27:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:27:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:27:29 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:27:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00af4a8d648bb79c2d88ae384df640655a9e4f55ab74d5a56eb0901ab082e534`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d19bd3b6a7917b013cb1180c225b6970b03f29041f94129bd5d205d034587`  
		Last Modified: Wed, 23 Jan 2019 09:30:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5622b083461e3160c226f3e7423a707757a51b273cd59a32a9704cc0456ef465`  
		Last Modified: Wed, 23 Jan 2019 09:30:39 GMT  
		Size: 840.3 KB (840308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b61740a214695ee0b7d963dfdf5dc7115c762ec438d37ab9447f247fbb183`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeadad4e441aa02ed41190a7689e035c7cdcb982f7b1da883ab4e2e422e5372e`  
		Last Modified: Wed, 23 Jan 2019 09:30:41 GMT  
		Size: 7.3 MB (7321643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7675c926e11ec167850feef30ab7fb71eb9ed26ef64dae3941a0280ada5097a4`  
		Last Modified: Wed, 23 Jan 2019 09:30:34 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4861ab37a742c720e5b98d2d7c9cac85ffe1216557b04dc4a31858b3d56b8564`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67e1b8a12ca163d0b33418ed091118e6e8cad32f43bd7c2c16812a7a268da59`  
		Last Modified: Wed, 23 Jan 2019 09:30:53 GMT  
		Size: 64.4 MB (64401984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6605b35e528db0f3fb0090ed2903718397bf01c2f2ef66de5dd96e75265d2`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ba7cab6168a567a6ee38f0f4f25e09c4e44cb5555e71954a752d79242be73a`  
		Last Modified: Wed, 23 Jan 2019 09:30:34 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:62515517791c499ba845f7b1b08cbd8fe456ac52cf52015104893017720ccefa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99113618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6cf8ece760aa9147664929f1a5fa8b41efd07470efd65206fbc2c48bb901c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:46:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:46:48 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:46:49 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:47:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:47:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:48:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:48:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:48:54 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 29 Dec 2018 10:48:54 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 29 Dec 2018 10:48:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:51:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:51:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:51:17 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:51:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:51:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:51:21 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:51:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7de872035f372987c8c1ed77c7ea06cc59086b2a97e13c3885e5653c496f1d`  
		Last Modified: Sat, 29 Dec 2018 10:55:09 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05224363ab57560d85a4ca32245b99002579f0029b1133343303a8a9fbce590`  
		Last Modified: Sat, 29 Dec 2018 10:55:05 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca4699adcbd83b2bbd8ca72fadcd799980373966f97bcb6a02d797085c682e`  
		Last Modified: Sat, 29 Dec 2018 10:55:06 GMT  
		Size: 807.4 KB (807370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f146711436624a7b87af90d9aa5bdd53eff421758a5495aeb60fa74fdf27c3`  
		Last Modified: Sat, 29 Dec 2018 10:55:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3d6dc62fd8d3cf366c974c1a38463a960ab19eef3fed3d74532781666d8ef5`  
		Last Modified: Sat, 29 Dec 2018 10:55:07 GMT  
		Size: 6.4 MB (6404902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cfb8586321991cfb94d1d5583e611d86c52bcfc9b6e0df4c6af4d7632062ee`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1869346c0dd1e8c683e2c56c566b7935b614742b00cb6a909b51eabe0676d1`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfd853f3a0e2784055e5e3b4df95e20a196ffbcb4d8f6c0637bb270d6ad62a5`  
		Last Modified: Sat, 29 Dec 2018 10:55:24 GMT  
		Size: 52.4 MB (52361590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6646e3a9e699557ce496336c87eb433a46fe229d1c1c4fd604ef9369a44c5256`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d4e624e2b8cfb9afa8c12d7f585fc8b9b4625262a99963e93108a201b03a6f`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:46a6afb04c53e38907b43441a5128d179f95a495e797c1f7f2afb6bc7d7eb8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114781973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebbf89df13e533b4dd52a85fe3eaf42e69b825e0428a5867cce612b7395ce4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:15:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:15:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:15:20 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:15:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:44 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:15:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Thu, 24 Jan 2019 00:15:47 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:16:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:16:38 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:16:38 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:16:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:16:39 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:16:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d85737291207cf017da2e99a0863d1cf39f8738ff5efc27d1e373bd348629`  
		Last Modified: Thu, 24 Jan 2019 00:18:10 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4101243177fd4943cf09302e71a526bba67931a1185ac9b7f20be53efcac6f77`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a41f9e25f2d0120998f8877ba3ee435c76c6e802b8ad72105fa8b5494482e`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 819.3 KB (819349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800718b75493fbea0398c68114afd5c0129d9da119469b5e3c4a5cc4fac6fc2`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443f5dba808c6ffebb5eae38a48f6441b21c63debe129dcb94b3fb6898e5234`  
		Last Modified: Thu, 24 Jan 2019 00:18:12 GMT  
		Size: 7.5 MB (7450649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb470299560ddd052b6efcc07a2b4394fa65bd1526393acbc4a562eff18f401`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201a4e97c89f1f2e28c31b5ab12764daaf1cdde1bf14b1a78b1a1487bef90360`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0d1a18d29ebe4f736e0b46b427f2eae4ed89850ab35ef712be7c064e6c5703`  
		Last Modified: Thu, 24 Jan 2019 00:18:26 GMT  
		Size: 62.7 MB (62745128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0747904b9fb2f4110b1515fb7761a69391633511d454378007bda94205354167`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1a347161550183e41e48b6c333d82e4b21276738601dad5f5a65758424239d`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bf51d6a284904806d428771ab6f499904d8d62606e5c6cf87d7403d417aa492f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109430592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e744468b00c03ef076750f1719ea7a0c5eab9b65137604dfda8afe7b0fb7ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:13:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:14:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:14:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:14:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:14:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:16:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:16:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:16:23 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 23 Jan 2019 10:16:26 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Wed, 23 Jan 2019 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:18:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:18:53 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:18:55 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:19:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:19:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:19:11 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:19:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9ea9aca3f3569cab1818edd534176fd4f017c1eb1f223f9441134c42ed3b15`  
		Last Modified: Wed, 23 Jan 2019 10:27:27 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0b66ed81b46deb75b63bd31b4b08f9b6d6e384fa34b927af9446cc482ceae0`  
		Last Modified: Wed, 23 Jan 2019 10:27:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32850e5dda4b5e6d9a19e5e1ff98c9b42adc1762c3adb6944202350c7c926682`  
		Last Modified: Wed, 23 Jan 2019 10:27:25 GMT  
		Size: 808.9 KB (808945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4fe23050e3660d1c97941ca5bcb94ddf1a0c70d023fdf8124ea0b37440a29`  
		Last Modified: Wed, 23 Jan 2019 10:27:24 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbc6023d10eb1b0a994fd54763b850f37c958c96314e49313a1d575e26ada87`  
		Last Modified: Wed, 23 Jan 2019 10:27:26 GMT  
		Size: 7.2 MB (7210755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c76d26c2f751e6fec124c24328865d56c51a3ded962303744a3901c2431a6b5`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5d49437169c03ab8db4cd6dc68420c408f8c84f2f5c8e5b1f90820e6df1a0`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9fee849f3509051ba7bac9ab187cb5795d1875bd299d52c11f9c49e752f74d`  
		Last Modified: Wed, 23 Jan 2019 10:27:35 GMT  
		Size: 55.6 MB (55622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96b78f40599adedacc416570d5ad3f637b6a5c9a4ad62632f444eee35c492`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effdf3ac0a968a68c3d5409581b23ddfb4e11cf46e6d699d4177947d9cf56eb3`  
		Last Modified: Wed, 23 Jan 2019 10:27:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:5465f541b73e53427f52afa01846906a239b03a463a69115c8b03e542694181b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:4e7ec2c29c983386a481b949340e3c45ed22f9d23c7ead89c9ac3f0e47448bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116117773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdac8ec3333b4fa6a2b9f7bf92fd56b5b2a3180e105089919e523205858cb2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:25:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:25:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:26:16 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:26:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:26:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:26:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:26:38 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 23 Jan 2019 09:26:38 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Wed, 23 Jan 2019 09:26:40 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:27:27 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:27:27 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:27:28 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:27:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:27:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:27:29 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:27:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00af4a8d648bb79c2d88ae384df640655a9e4f55ab74d5a56eb0901ab082e534`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d19bd3b6a7917b013cb1180c225b6970b03f29041f94129bd5d205d034587`  
		Last Modified: Wed, 23 Jan 2019 09:30:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5622b083461e3160c226f3e7423a707757a51b273cd59a32a9704cc0456ef465`  
		Last Modified: Wed, 23 Jan 2019 09:30:39 GMT  
		Size: 840.3 KB (840308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b61740a214695ee0b7d963dfdf5dc7115c762ec438d37ab9447f247fbb183`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeadad4e441aa02ed41190a7689e035c7cdcb982f7b1da883ab4e2e422e5372e`  
		Last Modified: Wed, 23 Jan 2019 09:30:41 GMT  
		Size: 7.3 MB (7321643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7675c926e11ec167850feef30ab7fb71eb9ed26ef64dae3941a0280ada5097a4`  
		Last Modified: Wed, 23 Jan 2019 09:30:34 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4861ab37a742c720e5b98d2d7c9cac85ffe1216557b04dc4a31858b3d56b8564`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67e1b8a12ca163d0b33418ed091118e6e8cad32f43bd7c2c16812a7a268da59`  
		Last Modified: Wed, 23 Jan 2019 09:30:53 GMT  
		Size: 64.4 MB (64401984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6605b35e528db0f3fb0090ed2903718397bf01c2f2ef66de5dd96e75265d2`  
		Last Modified: Wed, 23 Jan 2019 09:30:38 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ba7cab6168a567a6ee38f0f4f25e09c4e44cb5555e71954a752d79242be73a`  
		Last Modified: Wed, 23 Jan 2019 09:30:34 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:62515517791c499ba845f7b1b08cbd8fe456ac52cf52015104893017720ccefa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99113618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6cf8ece760aa9147664929f1a5fa8b41efd07470efd65206fbc2c48bb901c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:46:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:46:48 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:46:49 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:47:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:47:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:48:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:48:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:48:54 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 29 Dec 2018 10:48:54 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Sat, 29 Dec 2018 10:48:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:51:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:51:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:51:17 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:51:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:51:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:51:21 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:51:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7de872035f372987c8c1ed77c7ea06cc59086b2a97e13c3885e5653c496f1d`  
		Last Modified: Sat, 29 Dec 2018 10:55:09 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05224363ab57560d85a4ca32245b99002579f0029b1133343303a8a9fbce590`  
		Last Modified: Sat, 29 Dec 2018 10:55:05 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca4699adcbd83b2bbd8ca72fadcd799980373966f97bcb6a02d797085c682e`  
		Last Modified: Sat, 29 Dec 2018 10:55:06 GMT  
		Size: 807.4 KB (807370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f146711436624a7b87af90d9aa5bdd53eff421758a5495aeb60fa74fdf27c3`  
		Last Modified: Sat, 29 Dec 2018 10:55:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3d6dc62fd8d3cf366c974c1a38463a960ab19eef3fed3d74532781666d8ef5`  
		Last Modified: Sat, 29 Dec 2018 10:55:07 GMT  
		Size: 6.4 MB (6404902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cfb8586321991cfb94d1d5583e611d86c52bcfc9b6e0df4c6af4d7632062ee`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1869346c0dd1e8c683e2c56c566b7935b614742b00cb6a909b51eabe0676d1`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfd853f3a0e2784055e5e3b4df95e20a196ffbcb4d8f6c0637bb270d6ad62a5`  
		Last Modified: Sat, 29 Dec 2018 10:55:24 GMT  
		Size: 52.4 MB (52361590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6646e3a9e699557ce496336c87eb433a46fe229d1c1c4fd604ef9369a44c5256`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d4e624e2b8cfb9afa8c12d7f585fc8b9b4625262a99963e93108a201b03a6f`  
		Last Modified: Sat, 29 Dec 2018 10:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:46a6afb04c53e38907b43441a5128d179f95a495e797c1f7f2afb6bc7d7eb8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114781973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebbf89df13e533b4dd52a85fe3eaf42e69b825e0428a5867cce612b7395ce4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:15:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:15:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:15:20 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:15:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:44 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:15:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Thu, 24 Jan 2019 00:15:47 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:16:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:16:38 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:16:38 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:16:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:16:39 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:16:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d85737291207cf017da2e99a0863d1cf39f8738ff5efc27d1e373bd348629`  
		Last Modified: Thu, 24 Jan 2019 00:18:10 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4101243177fd4943cf09302e71a526bba67931a1185ac9b7f20be53efcac6f77`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a41f9e25f2d0120998f8877ba3ee435c76c6e802b8ad72105fa8b5494482e`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 819.3 KB (819349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800718b75493fbea0398c68114afd5c0129d9da119469b5e3c4a5cc4fac6fc2`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443f5dba808c6ffebb5eae38a48f6441b21c63debe129dcb94b3fb6898e5234`  
		Last Modified: Thu, 24 Jan 2019 00:18:12 GMT  
		Size: 7.5 MB (7450649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb470299560ddd052b6efcc07a2b4394fa65bd1526393acbc4a562eff18f401`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201a4e97c89f1f2e28c31b5ab12764daaf1cdde1bf14b1a78b1a1487bef90360`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0d1a18d29ebe4f736e0b46b427f2eae4ed89850ab35ef712be7c064e6c5703`  
		Last Modified: Thu, 24 Jan 2019 00:18:26 GMT  
		Size: 62.7 MB (62745128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0747904b9fb2f4110b1515fb7761a69391633511d454378007bda94205354167`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1a347161550183e41e48b6c333d82e4b21276738601dad5f5a65758424239d`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bf51d6a284904806d428771ab6f499904d8d62606e5c6cf87d7403d417aa492f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109430592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e744468b00c03ef076750f1719ea7a0c5eab9b65137604dfda8afe7b0fb7ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:13:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:14:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:14:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:14:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:14:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:16:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:16:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:16:23 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 23 Jan 2019 10:16:26 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Wed, 23 Jan 2019 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:18:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:18:53 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:18:55 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:19:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:19:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:19:11 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:19:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9ea9aca3f3569cab1818edd534176fd4f017c1eb1f223f9441134c42ed3b15`  
		Last Modified: Wed, 23 Jan 2019 10:27:27 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0b66ed81b46deb75b63bd31b4b08f9b6d6e384fa34b927af9446cc482ceae0`  
		Last Modified: Wed, 23 Jan 2019 10:27:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32850e5dda4b5e6d9a19e5e1ff98c9b42adc1762c3adb6944202350c7c926682`  
		Last Modified: Wed, 23 Jan 2019 10:27:25 GMT  
		Size: 808.9 KB (808945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4fe23050e3660d1c97941ca5bcb94ddf1a0c70d023fdf8124ea0b37440a29`  
		Last Modified: Wed, 23 Jan 2019 10:27:24 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbc6023d10eb1b0a994fd54763b850f37c958c96314e49313a1d575e26ada87`  
		Last Modified: Wed, 23 Jan 2019 10:27:26 GMT  
		Size: 7.2 MB (7210755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c76d26c2f751e6fec124c24328865d56c51a3ded962303744a3901c2431a6b5`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5d49437169c03ab8db4cd6dc68420c408f8c84f2f5c8e5b1f90820e6df1a0`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9fee849f3509051ba7bac9ab187cb5795d1875bd299d52c11f9c49e752f74d`  
		Last Modified: Wed, 23 Jan 2019 10:27:35 GMT  
		Size: 55.6 MB (55622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96b78f40599adedacc416570d5ad3f637b6a5c9a4ad62632f444eee35c492`  
		Last Modified: Wed, 23 Jan 2019 10:27:21 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effdf3ac0a968a68c3d5409581b23ddfb4e11cf46e6d699d4177947d9cf56eb3`  
		Last Modified: Wed, 23 Jan 2019 10:27:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:377901ad0b81d5c42367e32bc652d909fabef0dd82963246cf2154a4becf1d77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:416a769049abd627321e679f5ae2b35e15407b5966e1c1233ffecf51200e3042
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118712478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d580f7c3130bc66cf04cd7e09f13cc9cc9a4e8fd1c1049ddaa705e58f69cc156`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:24:49 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 23 Jan 2019 09:24:49 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Wed, 23 Jan 2019 09:24:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:25:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:25:38 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:25:38 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:25:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:25:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:25:40 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:25:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498ef9d985e5b841796f9d8a9a2b8d82304543fa6640143859e4c0d03be3f2ab`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fba9e3a737baca5a3bda704d611eb0783cab7a8f86318c120d689526cb2ddfb`  
		Last Modified: Wed, 23 Jan 2019 09:30:18 GMT  
		Size: 77.8 MB (77759398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4f585eb55cbf7daf27f3488be043316f76b4b2ee5f41afb16eb4286e474b7`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1764e0f6b984c30b1198a591b7c6b330759c628185da511cc5ebd3b6830a889`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1fafd96e71122c5678c77c88e70eb841f1c101fd6e574c35d18037f121b49524
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (110982767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93a4140c0a610a107ea624a7b5f37179b8b02c8f6d359ca3cf270a2e700c61f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:43:23 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 29 Dec 2018 10:43:24 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 29 Dec 2018 10:43:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:46:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:46:12 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:46:13 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:46:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:46:19 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:46:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c64ff0b60ac1000b3b1bc2b5f3de997736600247521b06a412596a3d6385024`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83feb91a8aa71e2ceffaf1505de29d143d92e856e5ed87e599f16e24dee1ea0b`  
		Last Modified: Sat, 29 Dec 2018 10:54:48 GMT  
		Size: 74.1 MB (74090150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7812f64a6ea4cb3c2be4d6add7651e95ae12cca853d50433ebf11061f06fbb2`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dae999af03189e7a4701ea32fd1bd190b9ba447a70ef392c4130ae114b202dc`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:c1e6b6f898b78c798bc14bb3ef15f0ef72a1a1bbe574d43c292d3586f09ed1da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123291547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf402a64b7dfd7ec03d711d6aff25c56c3c5f74cd35825706a3306917eab250c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:11:06 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 23 Jan 2019 10:11:10 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Wed, 23 Jan 2019 10:11:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:13:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:13:14 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:13:18 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:13:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:13:33 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:13:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37816753a41e475c941e88274afe9d19135fe95b12bf469ea28f0ca275faa68`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a6df6970655e5dfec0932eb2226d6bd3dcb5becf9d8ebede8f81f932a4ded7`  
		Last Modified: Wed, 23 Jan 2019 10:27:02 GMT  
		Size: 78.3 MB (78295587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c6145f34e66e63eeb266d4c518d4b259e2013c4c7aa19d4a27801e5e9b257f`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5de9561644b30360d612a484123f3c6f2f5478d2bb60238ddd4731b36e478a`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.37`

```console
$ docker pull mariadb@sha256:377901ad0b81d5c42367e32bc652d909fabef0dd82963246cf2154a4becf1d77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.37` - linux; amd64

```console
$ docker pull mariadb@sha256:416a769049abd627321e679f5ae2b35e15407b5966e1c1233ffecf51200e3042
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118712478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d580f7c3130bc66cf04cd7e09f13cc9cc9a4e8fd1c1049ddaa705e58f69cc156`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:24:49 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 23 Jan 2019 09:24:49 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Wed, 23 Jan 2019 09:24:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:25:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:25:38 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:25:38 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:25:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:25:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:25:40 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:25:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498ef9d985e5b841796f9d8a9a2b8d82304543fa6640143859e4c0d03be3f2ab`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fba9e3a737baca5a3bda704d611eb0783cab7a8f86318c120d689526cb2ddfb`  
		Last Modified: Wed, 23 Jan 2019 09:30:18 GMT  
		Size: 77.8 MB (77759398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4f585eb55cbf7daf27f3488be043316f76b4b2ee5f41afb16eb4286e474b7`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1764e0f6b984c30b1198a591b7c6b330759c628185da511cc5ebd3b6830a889`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1fafd96e71122c5678c77c88e70eb841f1c101fd6e574c35d18037f121b49524
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (110982767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93a4140c0a610a107ea624a7b5f37179b8b02c8f6d359ca3cf270a2e700c61f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:43:23 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 29 Dec 2018 10:43:24 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 29 Dec 2018 10:43:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:46:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:46:12 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:46:13 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:46:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:46:19 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:46:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c64ff0b60ac1000b3b1bc2b5f3de997736600247521b06a412596a3d6385024`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83feb91a8aa71e2ceffaf1505de29d143d92e856e5ed87e599f16e24dee1ea0b`  
		Last Modified: Sat, 29 Dec 2018 10:54:48 GMT  
		Size: 74.1 MB (74090150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7812f64a6ea4cb3c2be4d6add7651e95ae12cca853d50433ebf11061f06fbb2`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dae999af03189e7a4701ea32fd1bd190b9ba447a70ef392c4130ae114b202dc`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37` - linux; ppc64le

```console
$ docker pull mariadb@sha256:c1e6b6f898b78c798bc14bb3ef15f0ef72a1a1bbe574d43c292d3586f09ed1da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123291547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf402a64b7dfd7ec03d711d6aff25c56c3c5f74cd35825706a3306917eab250c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:11:06 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 23 Jan 2019 10:11:10 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Wed, 23 Jan 2019 10:11:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:13:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:13:14 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:13:18 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:13:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:13:33 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:13:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37816753a41e475c941e88274afe9d19135fe95b12bf469ea28f0ca275faa68`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a6df6970655e5dfec0932eb2226d6bd3dcb5becf9d8ebede8f81f932a4ded7`  
		Last Modified: Wed, 23 Jan 2019 10:27:02 GMT  
		Size: 78.3 MB (78295587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c6145f34e66e63eeb266d4c518d4b259e2013c4c7aa19d4a27801e5e9b257f`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5de9561644b30360d612a484123f3c6f2f5478d2bb60238ddd4731b36e478a`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.37-bionic`

```console
$ docker pull mariadb@sha256:377901ad0b81d5c42367e32bc652d909fabef0dd82963246cf2154a4becf1d77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.37-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:416a769049abd627321e679f5ae2b35e15407b5966e1c1233ffecf51200e3042
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118712478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d580f7c3130bc66cf04cd7e09f13cc9cc9a4e8fd1c1049ddaa705e58f69cc156`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:24:49 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 23 Jan 2019 09:24:49 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Wed, 23 Jan 2019 09:24:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:25:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:25:38 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:25:38 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:25:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:25:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:25:40 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:25:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498ef9d985e5b841796f9d8a9a2b8d82304543fa6640143859e4c0d03be3f2ab`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fba9e3a737baca5a3bda704d611eb0783cab7a8f86318c120d689526cb2ddfb`  
		Last Modified: Wed, 23 Jan 2019 09:30:18 GMT  
		Size: 77.8 MB (77759398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4f585eb55cbf7daf27f3488be043316f76b4b2ee5f41afb16eb4286e474b7`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1764e0f6b984c30b1198a591b7c6b330759c628185da511cc5ebd3b6830a889`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1fafd96e71122c5678c77c88e70eb841f1c101fd6e574c35d18037f121b49524
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (110982767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93a4140c0a610a107ea624a7b5f37179b8b02c8f6d359ca3cf270a2e700c61f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:43:23 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 29 Dec 2018 10:43:24 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 29 Dec 2018 10:43:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:46:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:46:12 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:46:13 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:46:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:46:19 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:46:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c64ff0b60ac1000b3b1bc2b5f3de997736600247521b06a412596a3d6385024`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83feb91a8aa71e2ceffaf1505de29d143d92e856e5ed87e599f16e24dee1ea0b`  
		Last Modified: Sat, 29 Dec 2018 10:54:48 GMT  
		Size: 74.1 MB (74090150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7812f64a6ea4cb3c2be4d6add7651e95ae12cca853d50433ebf11061f06fbb2`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dae999af03189e7a4701ea32fd1bd190b9ba447a70ef392c4130ae114b202dc`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:c1e6b6f898b78c798bc14bb3ef15f0ef72a1a1bbe574d43c292d3586f09ed1da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123291547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf402a64b7dfd7ec03d711d6aff25c56c3c5f74cd35825706a3306917eab250c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:11:06 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 23 Jan 2019 10:11:10 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Wed, 23 Jan 2019 10:11:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:13:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:13:14 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:13:18 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:13:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:13:33 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:13:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37816753a41e475c941e88274afe9d19135fe95b12bf469ea28f0ca275faa68`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a6df6970655e5dfec0932eb2226d6bd3dcb5becf9d8ebede8f81f932a4ded7`  
		Last Modified: Wed, 23 Jan 2019 10:27:02 GMT  
		Size: 78.3 MB (78295587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c6145f34e66e63eeb266d4c518d4b259e2013c4c7aa19d4a27801e5e9b257f`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5de9561644b30360d612a484123f3c6f2f5478d2bb60238ddd4731b36e478a`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:377901ad0b81d5c42367e32bc652d909fabef0dd82963246cf2154a4becf1d77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:416a769049abd627321e679f5ae2b35e15407b5966e1c1233ffecf51200e3042
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118712478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d580f7c3130bc66cf04cd7e09f13cc9cc9a4e8fd1c1049ddaa705e58f69cc156`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:24:49 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 23 Jan 2019 09:24:49 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Wed, 23 Jan 2019 09:24:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:25:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:25:38 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:25:38 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:25:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:25:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:25:40 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:25:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498ef9d985e5b841796f9d8a9a2b8d82304543fa6640143859e4c0d03be3f2ab`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fba9e3a737baca5a3bda704d611eb0783cab7a8f86318c120d689526cb2ddfb`  
		Last Modified: Wed, 23 Jan 2019 09:30:18 GMT  
		Size: 77.8 MB (77759398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4f585eb55cbf7daf27f3488be043316f76b4b2ee5f41afb16eb4286e474b7`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1764e0f6b984c30b1198a591b7c6b330759c628185da511cc5ebd3b6830a889`  
		Last Modified: Wed, 23 Jan 2019 09:29:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1fafd96e71122c5678c77c88e70eb841f1c101fd6e574c35d18037f121b49524
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (110982767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93a4140c0a610a107ea624a7b5f37179b8b02c8f6d359ca3cf270a2e700c61f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:43:23 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 29 Dec 2018 10:43:24 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Sat, 29 Dec 2018 10:43:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:46:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:46:12 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:46:13 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:46:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:46:19 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:46:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c64ff0b60ac1000b3b1bc2b5f3de997736600247521b06a412596a3d6385024`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83feb91a8aa71e2ceffaf1505de29d143d92e856e5ed87e599f16e24dee1ea0b`  
		Last Modified: Sat, 29 Dec 2018 10:54:48 GMT  
		Size: 74.1 MB (74090150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7812f64a6ea4cb3c2be4d6add7651e95ae12cca853d50433ebf11061f06fbb2`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dae999af03189e7a4701ea32fd1bd190b9ba447a70ef392c4130ae114b202dc`  
		Last Modified: Sat, 29 Dec 2018 10:54:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:c1e6b6f898b78c798bc14bb3ef15f0ef72a1a1bbe574d43c292d3586f09ed1da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123291547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf402a64b7dfd7ec03d711d6aff25c56c3c5f74cd35825706a3306917eab250c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:11:06 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 23 Jan 2019 10:11:10 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Wed, 23 Jan 2019 10:11:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:13:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:13:14 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:13:18 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:13:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:13:33 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:13:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37816753a41e475c941e88274afe9d19135fe95b12bf469ea28f0ca275faa68`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a6df6970655e5dfec0932eb2226d6bd3dcb5becf9d8ebede8f81f932a4ded7`  
		Last Modified: Wed, 23 Jan 2019 10:27:02 GMT  
		Size: 78.3 MB (78295587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c6145f34e66e63eeb266d4c518d4b259e2013c4c7aa19d4a27801e5e9b257f`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5de9561644b30360d612a484123f3c6f2f5478d2bb60238ddd4731b36e478a`  
		Last Modified: Wed, 23 Jan 2019 10:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:952642cd8a7b38242b8dc36a483a531ab03f9dfcba47fdeab7afaa4536460418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:3c4b2db83128fe8d98000f63de94488eaec7ff3a619b2294554718ce0516e111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114256032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9eef671d6acb7382000ba6f3676f7887120c16ad1633c33b198bf72867335eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:24:05 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 23 Jan 2019 09:24:05 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Wed, 23 Jan 2019 09:24:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:24:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:24:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:24:41 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:24:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:24:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:24:43 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a1b141b745f255b68a97515ab4f17853391e0af751dea079fa05189e817f4`  
		Last Modified: Wed, 23 Jan 2019 09:29:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1256e183542020f372ebef0ca37946dee8d7ffc78189832d432664808a05d0f4`  
		Last Modified: Wed, 23 Jan 2019 09:29:49 GMT  
		Size: 73.3 MB (73302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3c563e7a777f64bb69f5d18be5bbb56fa201ccade88c1d1c9bca63c4cbbf72`  
		Last Modified: Wed, 23 Jan 2019 09:29:34 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5895af743528a45e8050d4df1773aa7560ecc3f4e64b590cbe001ae510c3c4f5`  
		Last Modified: Wed, 23 Jan 2019 09:29:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:265d0171c3f8a771879cdb787e2f25fc0183aabe29aa358563cae0c7838ce263
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109143241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32b383e1d7c9112dc29833bd5701251b9ee7f047fca67df53afef583655fced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:39:36 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 04 Jan 2019 09:44:11 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Fri, 04 Jan 2019 09:44:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 04 Jan 2019 09:45:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 04 Jan 2019 09:45:50 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 Jan 2019 09:45:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Fri, 04 Jan 2019 09:45:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 04 Jan 2019 09:45:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 09:45:54 GMT
EXPOSE 3306
# Fri, 04 Jan 2019 09:45:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1d213cecef4d119f836aed6d29fca594b8d6550ba742fb89416f73ef12b3cb`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6833916819cfc018a01906e9d6c35f7cede9324132a0c8d7a6ded16c5acaf1f`  
		Last Modified: Fri, 04 Jan 2019 09:47:13 GMT  
		Size: 72.3 MB (72250623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edf43e6628d0186ca81b0344d0d3ad3402c074f84f7bc0631811184ee5b7e69`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ca9ada98a2be0367367f3a4d452c8e62f97813730f298a4cc1fb2f596e4089`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:32b58e40c9fc3f5aa82fa7d1d22b0fa58756d9baff6e68fbf1d45d73c25bba21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121153645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4017f8e7de132d69f57f3391d818aff9ee6a6d1b755b8463e882a5e9371fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:08:28 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 23 Jan 2019 10:08:30 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Wed, 23 Jan 2019 10:08:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:10:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:10:42 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:10:44 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:10:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:10:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:10:54 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:10:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745592b39c7b875d13dc2d73eecdfb2f58c60cbb761f4bbc67c0c5abe337c244`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea26e96f81cb1db454a9b76b094f3ccc62efb491f87db95059ae465887949d4`  
		Last Modified: Wed, 23 Jan 2019 10:26:26 GMT  
		Size: 76.2 MB (76157684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c784df2a9ac574cac91e77fa0c5de30285eaf965a88ecfeb35c37812eb69da82`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d0ef3f81a53e1f64c036621fcc8e9a206ae6f45f0e4d478a0adf1a5033693c`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.21`

```console
$ docker pull mariadb@sha256:952642cd8a7b38242b8dc36a483a531ab03f9dfcba47fdeab7afaa4536460418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.21` - linux; amd64

```console
$ docker pull mariadb@sha256:3c4b2db83128fe8d98000f63de94488eaec7ff3a619b2294554718ce0516e111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114256032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9eef671d6acb7382000ba6f3676f7887120c16ad1633c33b198bf72867335eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:24:05 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 23 Jan 2019 09:24:05 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Wed, 23 Jan 2019 09:24:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:24:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:24:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:24:41 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:24:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:24:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:24:43 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a1b141b745f255b68a97515ab4f17853391e0af751dea079fa05189e817f4`  
		Last Modified: Wed, 23 Jan 2019 09:29:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1256e183542020f372ebef0ca37946dee8d7ffc78189832d432664808a05d0f4`  
		Last Modified: Wed, 23 Jan 2019 09:29:49 GMT  
		Size: 73.3 MB (73302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3c563e7a777f64bb69f5d18be5bbb56fa201ccade88c1d1c9bca63c4cbbf72`  
		Last Modified: Wed, 23 Jan 2019 09:29:34 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5895af743528a45e8050d4df1773aa7560ecc3f4e64b590cbe001ae510c3c4f5`  
		Last Modified: Wed, 23 Jan 2019 09:29:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.21` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:265d0171c3f8a771879cdb787e2f25fc0183aabe29aa358563cae0c7838ce263
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109143241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32b383e1d7c9112dc29833bd5701251b9ee7f047fca67df53afef583655fced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:39:36 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 04 Jan 2019 09:44:11 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Fri, 04 Jan 2019 09:44:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 04 Jan 2019 09:45:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 04 Jan 2019 09:45:50 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 Jan 2019 09:45:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Fri, 04 Jan 2019 09:45:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 04 Jan 2019 09:45:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 09:45:54 GMT
EXPOSE 3306
# Fri, 04 Jan 2019 09:45:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1d213cecef4d119f836aed6d29fca594b8d6550ba742fb89416f73ef12b3cb`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6833916819cfc018a01906e9d6c35f7cede9324132a0c8d7a6ded16c5acaf1f`  
		Last Modified: Fri, 04 Jan 2019 09:47:13 GMT  
		Size: 72.3 MB (72250623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edf43e6628d0186ca81b0344d0d3ad3402c074f84f7bc0631811184ee5b7e69`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ca9ada98a2be0367367f3a4d452c8e62f97813730f298a4cc1fb2f596e4089`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.21` - linux; ppc64le

```console
$ docker pull mariadb@sha256:32b58e40c9fc3f5aa82fa7d1d22b0fa58756d9baff6e68fbf1d45d73c25bba21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121153645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4017f8e7de132d69f57f3391d818aff9ee6a6d1b755b8463e882a5e9371fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:08:28 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 23 Jan 2019 10:08:30 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Wed, 23 Jan 2019 10:08:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:10:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:10:42 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:10:44 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:10:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:10:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:10:54 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:10:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745592b39c7b875d13dc2d73eecdfb2f58c60cbb761f4bbc67c0c5abe337c244`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea26e96f81cb1db454a9b76b094f3ccc62efb491f87db95059ae465887949d4`  
		Last Modified: Wed, 23 Jan 2019 10:26:26 GMT  
		Size: 76.2 MB (76157684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c784df2a9ac574cac91e77fa0c5de30285eaf965a88ecfeb35c37812eb69da82`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d0ef3f81a53e1f64c036621fcc8e9a206ae6f45f0e4d478a0adf1a5033693c`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.21-bionic`

```console
$ docker pull mariadb@sha256:952642cd8a7b38242b8dc36a483a531ab03f9dfcba47fdeab7afaa4536460418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.21-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:3c4b2db83128fe8d98000f63de94488eaec7ff3a619b2294554718ce0516e111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114256032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9eef671d6acb7382000ba6f3676f7887120c16ad1633c33b198bf72867335eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:24:05 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 23 Jan 2019 09:24:05 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Wed, 23 Jan 2019 09:24:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:24:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:24:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:24:41 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:24:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:24:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:24:43 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a1b141b745f255b68a97515ab4f17853391e0af751dea079fa05189e817f4`  
		Last Modified: Wed, 23 Jan 2019 09:29:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1256e183542020f372ebef0ca37946dee8d7ffc78189832d432664808a05d0f4`  
		Last Modified: Wed, 23 Jan 2019 09:29:49 GMT  
		Size: 73.3 MB (73302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3c563e7a777f64bb69f5d18be5bbb56fa201ccade88c1d1c9bca63c4cbbf72`  
		Last Modified: Wed, 23 Jan 2019 09:29:34 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5895af743528a45e8050d4df1773aa7560ecc3f4e64b590cbe001ae510c3c4f5`  
		Last Modified: Wed, 23 Jan 2019 09:29:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.21-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:265d0171c3f8a771879cdb787e2f25fc0183aabe29aa358563cae0c7838ce263
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109143241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32b383e1d7c9112dc29833bd5701251b9ee7f047fca67df53afef583655fced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:39:36 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 04 Jan 2019 09:44:11 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Fri, 04 Jan 2019 09:44:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 04 Jan 2019 09:45:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 04 Jan 2019 09:45:50 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 Jan 2019 09:45:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Fri, 04 Jan 2019 09:45:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 04 Jan 2019 09:45:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 09:45:54 GMT
EXPOSE 3306
# Fri, 04 Jan 2019 09:45:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1d213cecef4d119f836aed6d29fca594b8d6550ba742fb89416f73ef12b3cb`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6833916819cfc018a01906e9d6c35f7cede9324132a0c8d7a6ded16c5acaf1f`  
		Last Modified: Fri, 04 Jan 2019 09:47:13 GMT  
		Size: 72.3 MB (72250623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edf43e6628d0186ca81b0344d0d3ad3402c074f84f7bc0631811184ee5b7e69`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ca9ada98a2be0367367f3a4d452c8e62f97813730f298a4cc1fb2f596e4089`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.21-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:32b58e40c9fc3f5aa82fa7d1d22b0fa58756d9baff6e68fbf1d45d73c25bba21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121153645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4017f8e7de132d69f57f3391d818aff9ee6a6d1b755b8463e882a5e9371fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:08:28 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 23 Jan 2019 10:08:30 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Wed, 23 Jan 2019 10:08:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:10:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:10:42 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:10:44 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:10:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:10:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:10:54 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:10:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745592b39c7b875d13dc2d73eecdfb2f58c60cbb761f4bbc67c0c5abe337c244`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea26e96f81cb1db454a9b76b094f3ccc62efb491f87db95059ae465887949d4`  
		Last Modified: Wed, 23 Jan 2019 10:26:26 GMT  
		Size: 76.2 MB (76157684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c784df2a9ac574cac91e77fa0c5de30285eaf965a88ecfeb35c37812eb69da82`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d0ef3f81a53e1f64c036621fcc8e9a206ae6f45f0e4d478a0adf1a5033693c`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:952642cd8a7b38242b8dc36a483a531ab03f9dfcba47fdeab7afaa4536460418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:3c4b2db83128fe8d98000f63de94488eaec7ff3a619b2294554718ce0516e111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114256032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9eef671d6acb7382000ba6f3676f7887120c16ad1633c33b198bf72867335eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:24:05 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 23 Jan 2019 09:24:05 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Wed, 23 Jan 2019 09:24:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:24:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:24:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:24:41 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:24:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:24:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:24:43 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024a1b141b745f255b68a97515ab4f17853391e0af751dea079fa05189e817f4`  
		Last Modified: Wed, 23 Jan 2019 09:29:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1256e183542020f372ebef0ca37946dee8d7ffc78189832d432664808a05d0f4`  
		Last Modified: Wed, 23 Jan 2019 09:29:49 GMT  
		Size: 73.3 MB (73302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3c563e7a777f64bb69f5d18be5bbb56fa201ccade88c1d1c9bca63c4cbbf72`  
		Last Modified: Wed, 23 Jan 2019 09:29:34 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5895af743528a45e8050d4df1773aa7560ecc3f4e64b590cbe001ae510c3c4f5`  
		Last Modified: Wed, 23 Jan 2019 09:29:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:265d0171c3f8a771879cdb787e2f25fc0183aabe29aa358563cae0c7838ce263
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109143241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32b383e1d7c9112dc29833bd5701251b9ee7f047fca67df53afef583655fced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:39:36 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 04 Jan 2019 09:44:11 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Fri, 04 Jan 2019 09:44:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 04 Jan 2019 09:45:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 04 Jan 2019 09:45:50 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 Jan 2019 09:45:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Fri, 04 Jan 2019 09:45:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 04 Jan 2019 09:45:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 09:45:54 GMT
EXPOSE 3306
# Fri, 04 Jan 2019 09:45:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1d213cecef4d119f836aed6d29fca594b8d6550ba742fb89416f73ef12b3cb`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6833916819cfc018a01906e9d6c35f7cede9324132a0c8d7a6ded16c5acaf1f`  
		Last Modified: Fri, 04 Jan 2019 09:47:13 GMT  
		Size: 72.3 MB (72250623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edf43e6628d0186ca81b0344d0d3ad3402c074f84f7bc0631811184ee5b7e69`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ca9ada98a2be0367367f3a4d452c8e62f97813730f298a4cc1fb2f596e4089`  
		Last Modified: Fri, 04 Jan 2019 09:46:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:32b58e40c9fc3f5aa82fa7d1d22b0fa58756d9baff6e68fbf1d45d73c25bba21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121153645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4017f8e7de132d69f57f3391d818aff9ee6a6d1b755b8463e882a5e9371fa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:08:28 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 23 Jan 2019 10:08:30 GMT
ENV MARIADB_VERSION=1:10.2.21+maria~bionic
# Wed, 23 Jan 2019 10:08:36 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:10:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:10:42 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:10:44 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:10:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:10:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:10:54 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:10:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745592b39c7b875d13dc2d73eecdfb2f58c60cbb761f4bbc67c0c5abe337c244`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea26e96f81cb1db454a9b76b094f3ccc62efb491f87db95059ae465887949d4`  
		Last Modified: Wed, 23 Jan 2019 10:26:26 GMT  
		Size: 76.2 MB (76157684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c784df2a9ac574cac91e77fa0c5de30285eaf965a88ecfeb35c37812eb69da82`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d0ef3f81a53e1f64c036621fcc8e9a206ae6f45f0e4d478a0adf1a5033693c`  
		Last Modified: Wed, 23 Jan 2019 10:26:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:eb6acf7f599f39c42582e11b1de3866c3934da84cc45190c0aac3e8d046e4053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:4db64a621651412b2525104506a1f5901ef76bd5a62257bd818c37cbb2a300fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901583bfdf5a129ba68b033c989dab7f10d2a9235c3a2093ad16f9ac979ac9f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 09:23:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:57 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:58 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d8b012ee89a3520f70fa031173a97e202d2e12ff98724f07f70f28ad162a2`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb787f18e3dea59864cf49e69608d134729d73deef1962694d411fdd624dae0`  
		Last Modified: Wed, 23 Jan 2019 09:29:23 GMT  
		Size: 74.3 MB (74279087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cfbee5299afb101c2b94b809d3bcfbc606a41b840423f0e5de5092b3e7171`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa7c8911619901874e6492188248c5058d9981d216e5f672c9634b9ee313aeb`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7da7e03a4751718b384a53b9cb6127be5b999ba538a2c29f4024b03e6b4cb759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568c7d36f080aa16bfd13b65c6a0ab316ff9aaed64b70bb3faa07b53b26371b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:05:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 11:05:03 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 11:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:07:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:07:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:07:36 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:07:44 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:07:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a4fc52a6afed9d96d9fad7cb3914d605a23120e01f10065bdab40a6ba3c64`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe10808173c8a0935398d649770c3cc75df0e465b2d96ddfc2dd043eef72443`  
		Last Modified: Fri, 25 Jan 2019 00:29:57 GMT  
		Size: 73.2 MB (73196318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13e66a5aca666bf56e6e99ae3eda0112f2e2b60a2e11f98789042bdb1a23b1`  
		Last Modified: Fri, 25 Jan 2019 00:29:07 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4452cdefbc13aa6e2fc39cc94146305b31f35b0c3b421b075a4da6510909d2`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f709b0c43d2d84d51c3f5bf7aa850819ae1219730ff0bc5614823f2655cbda2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122191961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617bf0c1f31e1c8ca9eba340a23cde7b522aec0751c8fc13fb5713bf8ffdf23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:05:07 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 10:05:10 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 10:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:07:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:07:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:07:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:08:12 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:08:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac150ce70eea4470c7851537943633bc6256f0ca4e64af72f7d474e6fe6b8d`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceebeb61511d80a4da9e238efd0a0536366f8de28c092460769885d6ac979094`  
		Last Modified: Wed, 23 Jan 2019 10:25:36 GMT  
		Size: 77.2 MB (77196004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476fbd672db08f5bdeb784274e261fbe136c61d66c12f2b7d792299d524ee08`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd105b81f56e86bed64b506d86d0c52c48e09742348f31572152c998fc538b0f`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.12`

```console
$ docker pull mariadb@sha256:eb6acf7f599f39c42582e11b1de3866c3934da84cc45190c0aac3e8d046e4053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.12` - linux; amd64

```console
$ docker pull mariadb@sha256:4db64a621651412b2525104506a1f5901ef76bd5a62257bd818c37cbb2a300fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901583bfdf5a129ba68b033c989dab7f10d2a9235c3a2093ad16f9ac979ac9f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 09:23:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:57 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:58 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d8b012ee89a3520f70fa031173a97e202d2e12ff98724f07f70f28ad162a2`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb787f18e3dea59864cf49e69608d134729d73deef1962694d411fdd624dae0`  
		Last Modified: Wed, 23 Jan 2019 09:29:23 GMT  
		Size: 74.3 MB (74279087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cfbee5299afb101c2b94b809d3bcfbc606a41b840423f0e5de5092b3e7171`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa7c8911619901874e6492188248c5058d9981d216e5f672c9634b9ee313aeb`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.12` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7da7e03a4751718b384a53b9cb6127be5b999ba538a2c29f4024b03e6b4cb759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568c7d36f080aa16bfd13b65c6a0ab316ff9aaed64b70bb3faa07b53b26371b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:05:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 11:05:03 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 11:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:07:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:07:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:07:36 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:07:44 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:07:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a4fc52a6afed9d96d9fad7cb3914d605a23120e01f10065bdab40a6ba3c64`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe10808173c8a0935398d649770c3cc75df0e465b2d96ddfc2dd043eef72443`  
		Last Modified: Fri, 25 Jan 2019 00:29:57 GMT  
		Size: 73.2 MB (73196318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13e66a5aca666bf56e6e99ae3eda0112f2e2b60a2e11f98789042bdb1a23b1`  
		Last Modified: Fri, 25 Jan 2019 00:29:07 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4452cdefbc13aa6e2fc39cc94146305b31f35b0c3b421b075a4da6510909d2`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.12` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f709b0c43d2d84d51c3f5bf7aa850819ae1219730ff0bc5614823f2655cbda2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122191961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617bf0c1f31e1c8ca9eba340a23cde7b522aec0751c8fc13fb5713bf8ffdf23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:05:07 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 10:05:10 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 10:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:07:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:07:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:07:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:08:12 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:08:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac150ce70eea4470c7851537943633bc6256f0ca4e64af72f7d474e6fe6b8d`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceebeb61511d80a4da9e238efd0a0536366f8de28c092460769885d6ac979094`  
		Last Modified: Wed, 23 Jan 2019 10:25:36 GMT  
		Size: 77.2 MB (77196004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476fbd672db08f5bdeb784274e261fbe136c61d66c12f2b7d792299d524ee08`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd105b81f56e86bed64b506d86d0c52c48e09742348f31572152c998fc538b0f`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.12-bionic`

```console
$ docker pull mariadb@sha256:eb6acf7f599f39c42582e11b1de3866c3934da84cc45190c0aac3e8d046e4053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.12-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:4db64a621651412b2525104506a1f5901ef76bd5a62257bd818c37cbb2a300fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901583bfdf5a129ba68b033c989dab7f10d2a9235c3a2093ad16f9ac979ac9f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 09:23:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:57 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:58 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d8b012ee89a3520f70fa031173a97e202d2e12ff98724f07f70f28ad162a2`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb787f18e3dea59864cf49e69608d134729d73deef1962694d411fdd624dae0`  
		Last Modified: Wed, 23 Jan 2019 09:29:23 GMT  
		Size: 74.3 MB (74279087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cfbee5299afb101c2b94b809d3bcfbc606a41b840423f0e5de5092b3e7171`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa7c8911619901874e6492188248c5058d9981d216e5f672c9634b9ee313aeb`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.12-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7da7e03a4751718b384a53b9cb6127be5b999ba538a2c29f4024b03e6b4cb759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568c7d36f080aa16bfd13b65c6a0ab316ff9aaed64b70bb3faa07b53b26371b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:05:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 11:05:03 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 11:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:07:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:07:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:07:36 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:07:44 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:07:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a4fc52a6afed9d96d9fad7cb3914d605a23120e01f10065bdab40a6ba3c64`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe10808173c8a0935398d649770c3cc75df0e465b2d96ddfc2dd043eef72443`  
		Last Modified: Fri, 25 Jan 2019 00:29:57 GMT  
		Size: 73.2 MB (73196318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13e66a5aca666bf56e6e99ae3eda0112f2e2b60a2e11f98789042bdb1a23b1`  
		Last Modified: Fri, 25 Jan 2019 00:29:07 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4452cdefbc13aa6e2fc39cc94146305b31f35b0c3b421b075a4da6510909d2`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.12-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f709b0c43d2d84d51c3f5bf7aa850819ae1219730ff0bc5614823f2655cbda2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122191961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617bf0c1f31e1c8ca9eba340a23cde7b522aec0751c8fc13fb5713bf8ffdf23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:05:07 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 10:05:10 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 10:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:07:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:07:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:07:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:08:12 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:08:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac150ce70eea4470c7851537943633bc6256f0ca4e64af72f7d474e6fe6b8d`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceebeb61511d80a4da9e238efd0a0536366f8de28c092460769885d6ac979094`  
		Last Modified: Wed, 23 Jan 2019 10:25:36 GMT  
		Size: 77.2 MB (77196004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476fbd672db08f5bdeb784274e261fbe136c61d66c12f2b7d792299d524ee08`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd105b81f56e86bed64b506d86d0c52c48e09742348f31572152c998fc538b0f`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:eb6acf7f599f39c42582e11b1de3866c3934da84cc45190c0aac3e8d046e4053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:4db64a621651412b2525104506a1f5901ef76bd5a62257bd818c37cbb2a300fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901583bfdf5a129ba68b033c989dab7f10d2a9235c3a2093ad16f9ac979ac9f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 09:23:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:57 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:58 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d8b012ee89a3520f70fa031173a97e202d2e12ff98724f07f70f28ad162a2`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb787f18e3dea59864cf49e69608d134729d73deef1962694d411fdd624dae0`  
		Last Modified: Wed, 23 Jan 2019 09:29:23 GMT  
		Size: 74.3 MB (74279087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cfbee5299afb101c2b94b809d3bcfbc606a41b840423f0e5de5092b3e7171`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa7c8911619901874e6492188248c5058d9981d216e5f672c9634b9ee313aeb`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7da7e03a4751718b384a53b9cb6127be5b999ba538a2c29f4024b03e6b4cb759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568c7d36f080aa16bfd13b65c6a0ab316ff9aaed64b70bb3faa07b53b26371b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:05:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 11:05:03 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 11:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:07:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:07:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:07:36 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:07:44 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:07:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a4fc52a6afed9d96d9fad7cb3914d605a23120e01f10065bdab40a6ba3c64`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe10808173c8a0935398d649770c3cc75df0e465b2d96ddfc2dd043eef72443`  
		Last Modified: Fri, 25 Jan 2019 00:29:57 GMT  
		Size: 73.2 MB (73196318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13e66a5aca666bf56e6e99ae3eda0112f2e2b60a2e11f98789042bdb1a23b1`  
		Last Modified: Fri, 25 Jan 2019 00:29:07 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4452cdefbc13aa6e2fc39cc94146305b31f35b0c3b421b075a4da6510909d2`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f709b0c43d2d84d51c3f5bf7aa850819ae1219730ff0bc5614823f2655cbda2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122191961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617bf0c1f31e1c8ca9eba340a23cde7b522aec0751c8fc13fb5713bf8ffdf23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:05:07 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 10:05:10 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 10:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:07:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:07:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:07:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:08:12 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:08:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac150ce70eea4470c7851537943633bc6256f0ca4e64af72f7d474e6fe6b8d`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceebeb61511d80a4da9e238efd0a0536366f8de28c092460769885d6ac979094`  
		Last Modified: Wed, 23 Jan 2019 10:25:36 GMT  
		Size: 77.2 MB (77196004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476fbd672db08f5bdeb784274e261fbe136c61d66c12f2b7d792299d524ee08`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd105b81f56e86bed64b506d86d0c52c48e09742348f31572152c998fc538b0f`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4`

```console
$ docker pull mariadb@sha256:6e05f3eef42f369dcbdd9c010826d538d64dfd800f750d3b16cc43fcb4dfe7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4` - linux; amd64

```console
$ docker pull mariadb@sha256:d969da9d365cfb78719b5b029852d54bc69fb1225a0f7f7e8215d37f79036cd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116193396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d82025e7432c029a23296d5e3feb94a4a89f1ee02b0b4aabb9479fd173bcc41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:22:20 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 09:22:20 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 09:22:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:01 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:01 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:01 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:03 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377a07d7a7f38c4133728b2bc8721911322b686ae3bd60e3cc655b6f9aca5d29`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16abf02fbc2fad2642f39f244831f57adb45cf18039d0b9e0dce1e0b9eb1a62`  
		Last Modified: Wed, 23 Jan 2019 09:29:00 GMT  
		Size: 75.2 MB (75240315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2c1167a02fef8c7db485bb3aa6b70b02fb9c5be66fd62935b788fb1527c118`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac06ad662123b06df89db182ca0db7153f86b842d3268f675cf05b916e4c12`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:30a4767cb11e9c2480ef3ecc322202f3e446eb01a52aeffe00cb57cb20900c44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111167479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8e03bdd90161c2f77e3243cd58038f4daeaf1b788e34e11e073ef96c900dbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:01:52 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 11:01:54 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 11:02:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:04:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:04:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:04:44 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:04:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:04:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:04:55 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:04:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b17449449c17e238ec2922890df1cc6241309e885e74e99d1b364e3d1891aa`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99507feeb1560fa7ce064c794e676d328bf19a0257a3fae10be769745047b82`  
		Last Modified: Fri, 25 Jan 2019 00:28:49 GMT  
		Size: 74.2 MB (74181066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dba52597836e295541ba3c1b5280917d710944ed85e588cb741835232a296e`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbc5db4cae36525be3a7a7d8c3230b957c4495c96454ca05e3a77daada7b8ab`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; ppc64le

```console
$ docker pull mariadb@sha256:e74f1e56529bcae49601c25ce15c39a0e6461891dbc5b606b414fa0ffb3faaef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123172640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c54429c17a1d114a848a3207de34ae587517b8b660b088e0f66eecd5fcd0b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:01:31 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 10:01:33 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 10:01:42 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:04:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:04:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:04:19 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:04:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:04:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:04:41 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:04:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059e6dcb6b2f1e24ad9b66375d9db8b57c21fd9e70322a0da722af9cdf4658f8`  
		Last Modified: Wed, 23 Jan 2019 10:24:15 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe30901a8dbf2eb05602b6b89d30a68d6649eda17efb22a32867d985dfe04ff5`  
		Last Modified: Wed, 23 Jan 2019 10:24:44 GMT  
		Size: 78.2 MB (78176682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3632b2944da9f96f8e2c1de658e2267a1863bb185ee734363699649682515d`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9583847d732fe8a38d4140e59a9c8a8dbc0a43bf98c7c4a7f4e4a31dac4e9e5d`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.1`

```console
$ docker pull mariadb@sha256:6e05f3eef42f369dcbdd9c010826d538d64dfd800f750d3b16cc43fcb4dfe7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4.1` - linux; amd64

```console
$ docker pull mariadb@sha256:d969da9d365cfb78719b5b029852d54bc69fb1225a0f7f7e8215d37f79036cd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116193396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d82025e7432c029a23296d5e3feb94a4a89f1ee02b0b4aabb9479fd173bcc41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:22:20 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 09:22:20 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 09:22:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:01 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:01 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:01 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:03 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377a07d7a7f38c4133728b2bc8721911322b686ae3bd60e3cc655b6f9aca5d29`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16abf02fbc2fad2642f39f244831f57adb45cf18039d0b9e0dce1e0b9eb1a62`  
		Last Modified: Wed, 23 Jan 2019 09:29:00 GMT  
		Size: 75.2 MB (75240315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2c1167a02fef8c7db485bb3aa6b70b02fb9c5be66fd62935b788fb1527c118`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac06ad662123b06df89db182ca0db7153f86b842d3268f675cf05b916e4c12`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:30a4767cb11e9c2480ef3ecc322202f3e446eb01a52aeffe00cb57cb20900c44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111167479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8e03bdd90161c2f77e3243cd58038f4daeaf1b788e34e11e073ef96c900dbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:01:52 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 11:01:54 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 11:02:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:04:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:04:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:04:44 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:04:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:04:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:04:55 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:04:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b17449449c17e238ec2922890df1cc6241309e885e74e99d1b364e3d1891aa`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99507feeb1560fa7ce064c794e676d328bf19a0257a3fae10be769745047b82`  
		Last Modified: Fri, 25 Jan 2019 00:28:49 GMT  
		Size: 74.2 MB (74181066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dba52597836e295541ba3c1b5280917d710944ed85e588cb741835232a296e`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbc5db4cae36525be3a7a7d8c3230b957c4495c96454ca05e3a77daada7b8ab`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:e74f1e56529bcae49601c25ce15c39a0e6461891dbc5b606b414fa0ffb3faaef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123172640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c54429c17a1d114a848a3207de34ae587517b8b660b088e0f66eecd5fcd0b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:01:31 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 10:01:33 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 10:01:42 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:04:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:04:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:04:19 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:04:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:04:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:04:41 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:04:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059e6dcb6b2f1e24ad9b66375d9db8b57c21fd9e70322a0da722af9cdf4658f8`  
		Last Modified: Wed, 23 Jan 2019 10:24:15 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe30901a8dbf2eb05602b6b89d30a68d6649eda17efb22a32867d985dfe04ff5`  
		Last Modified: Wed, 23 Jan 2019 10:24:44 GMT  
		Size: 78.2 MB (78176682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3632b2944da9f96f8e2c1de658e2267a1863bb185ee734363699649682515d`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9583847d732fe8a38d4140e59a9c8a8dbc0a43bf98c7c4a7f4e4a31dac4e9e5d`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.1-bionic`

```console
$ docker pull mariadb@sha256:6e05f3eef42f369dcbdd9c010826d538d64dfd800f750d3b16cc43fcb4dfe7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:d969da9d365cfb78719b5b029852d54bc69fb1225a0f7f7e8215d37f79036cd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116193396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d82025e7432c029a23296d5e3feb94a4a89f1ee02b0b4aabb9479fd173bcc41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:22:20 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 09:22:20 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 09:22:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:01 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:01 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:01 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:03 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377a07d7a7f38c4133728b2bc8721911322b686ae3bd60e3cc655b6f9aca5d29`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16abf02fbc2fad2642f39f244831f57adb45cf18039d0b9e0dce1e0b9eb1a62`  
		Last Modified: Wed, 23 Jan 2019 09:29:00 GMT  
		Size: 75.2 MB (75240315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2c1167a02fef8c7db485bb3aa6b70b02fb9c5be66fd62935b788fb1527c118`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac06ad662123b06df89db182ca0db7153f86b842d3268f675cf05b916e4c12`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:30a4767cb11e9c2480ef3ecc322202f3e446eb01a52aeffe00cb57cb20900c44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111167479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8e03bdd90161c2f77e3243cd58038f4daeaf1b788e34e11e073ef96c900dbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:01:52 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 11:01:54 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 11:02:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:04:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:04:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:04:44 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:04:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:04:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:04:55 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:04:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b17449449c17e238ec2922890df1cc6241309e885e74e99d1b364e3d1891aa`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99507feeb1560fa7ce064c794e676d328bf19a0257a3fae10be769745047b82`  
		Last Modified: Fri, 25 Jan 2019 00:28:49 GMT  
		Size: 74.2 MB (74181066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dba52597836e295541ba3c1b5280917d710944ed85e588cb741835232a296e`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbc5db4cae36525be3a7a7d8c3230b957c4495c96454ca05e3a77daada7b8ab`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:e74f1e56529bcae49601c25ce15c39a0e6461891dbc5b606b414fa0ffb3faaef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123172640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c54429c17a1d114a848a3207de34ae587517b8b660b088e0f66eecd5fcd0b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:01:31 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 10:01:33 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 10:01:42 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:04:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:04:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:04:19 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:04:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:04:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:04:41 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:04:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059e6dcb6b2f1e24ad9b66375d9db8b57c21fd9e70322a0da722af9cdf4658f8`  
		Last Modified: Wed, 23 Jan 2019 10:24:15 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe30901a8dbf2eb05602b6b89d30a68d6649eda17efb22a32867d985dfe04ff5`  
		Last Modified: Wed, 23 Jan 2019 10:24:44 GMT  
		Size: 78.2 MB (78176682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3632b2944da9f96f8e2c1de658e2267a1863bb185ee734363699649682515d`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9583847d732fe8a38d4140e59a9c8a8dbc0a43bf98c7c4a7f4e4a31dac4e9e5d`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4-bionic`

```console
$ docker pull mariadb@sha256:6e05f3eef42f369dcbdd9c010826d538d64dfd800f750d3b16cc43fcb4dfe7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:d969da9d365cfb78719b5b029852d54bc69fb1225a0f7f7e8215d37f79036cd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116193396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d82025e7432c029a23296d5e3feb94a4a89f1ee02b0b4aabb9479fd173bcc41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:22:20 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 09:22:20 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 09:22:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:01 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:01 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:01 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:03 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377a07d7a7f38c4133728b2bc8721911322b686ae3bd60e3cc655b6f9aca5d29`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16abf02fbc2fad2642f39f244831f57adb45cf18039d0b9e0dce1e0b9eb1a62`  
		Last Modified: Wed, 23 Jan 2019 09:29:00 GMT  
		Size: 75.2 MB (75240315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2c1167a02fef8c7db485bb3aa6b70b02fb9c5be66fd62935b788fb1527c118`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ac06ad662123b06df89db182ca0db7153f86b842d3268f675cf05b916e4c12`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:30a4767cb11e9c2480ef3ecc322202f3e446eb01a52aeffe00cb57cb20900c44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111167479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8e03bdd90161c2f77e3243cd58038f4daeaf1b788e34e11e073ef96c900dbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:01:52 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 11:01:54 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 11:02:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:04:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:04:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:04:44 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:04:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:04:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:04:55 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:04:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b17449449c17e238ec2922890df1cc6241309e885e74e99d1b364e3d1891aa`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99507feeb1560fa7ce064c794e676d328bf19a0257a3fae10be769745047b82`  
		Last Modified: Fri, 25 Jan 2019 00:28:49 GMT  
		Size: 74.2 MB (74181066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dba52597836e295541ba3c1b5280917d710944ed85e588cb741835232a296e`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbc5db4cae36525be3a7a7d8c3230b957c4495c96454ca05e3a77daada7b8ab`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:e74f1e56529bcae49601c25ce15c39a0e6461891dbc5b606b414fa0ffb3faaef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123172640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c54429c17a1d114a848a3207de34ae587517b8b660b088e0f66eecd5fcd0b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:01:31 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 23 Jan 2019 10:01:33 GMT
ENV MARIADB_VERSION=1:10.4.1+maria~bionic
# Wed, 23 Jan 2019 10:01:42 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:04:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:04:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:04:19 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:04:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:04:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:04:41 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:04:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059e6dcb6b2f1e24ad9b66375d9db8b57c21fd9e70322a0da722af9cdf4658f8`  
		Last Modified: Wed, 23 Jan 2019 10:24:15 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe30901a8dbf2eb05602b6b89d30a68d6649eda17efb22a32867d985dfe04ff5`  
		Last Modified: Wed, 23 Jan 2019 10:24:44 GMT  
		Size: 78.2 MB (78176682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3632b2944da9f96f8e2c1de658e2267a1863bb185ee734363699649682515d`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9583847d732fe8a38d4140e59a9c8a8dbc0a43bf98c7c4a7f4e4a31dac4e9e5d`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:eb6acf7f599f39c42582e11b1de3866c3934da84cc45190c0aac3e8d046e4053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:4db64a621651412b2525104506a1f5901ef76bd5a62257bd818c37cbb2a300fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901583bfdf5a129ba68b033c989dab7f10d2a9235c3a2093ad16f9ac979ac9f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 09:23:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:57 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:58 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d8b012ee89a3520f70fa031173a97e202d2e12ff98724f07f70f28ad162a2`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb787f18e3dea59864cf49e69608d134729d73deef1962694d411fdd624dae0`  
		Last Modified: Wed, 23 Jan 2019 09:29:23 GMT  
		Size: 74.3 MB (74279087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cfbee5299afb101c2b94b809d3bcfbc606a41b840423f0e5de5092b3e7171`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa7c8911619901874e6492188248c5058d9981d216e5f672c9634b9ee313aeb`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7da7e03a4751718b384a53b9cb6127be5b999ba538a2c29f4024b03e6b4cb759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568c7d36f080aa16bfd13b65c6a0ab316ff9aaed64b70bb3faa07b53b26371b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:05:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 11:05:03 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 11:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:07:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:07:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:07:36 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:07:44 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:07:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a4fc52a6afed9d96d9fad7cb3914d605a23120e01f10065bdab40a6ba3c64`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe10808173c8a0935398d649770c3cc75df0e465b2d96ddfc2dd043eef72443`  
		Last Modified: Fri, 25 Jan 2019 00:29:57 GMT  
		Size: 73.2 MB (73196318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13e66a5aca666bf56e6e99ae3eda0112f2e2b60a2e11f98789042bdb1a23b1`  
		Last Modified: Fri, 25 Jan 2019 00:29:07 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4452cdefbc13aa6e2fc39cc94146305b31f35b0c3b421b075a4da6510909d2`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f709b0c43d2d84d51c3f5bf7aa850819ae1219730ff0bc5614823f2655cbda2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122191961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617bf0c1f31e1c8ca9eba340a23cde7b522aec0751c8fc13fb5713bf8ffdf23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:05:07 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 10:05:10 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 10:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:07:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:07:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:07:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:08:12 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:08:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac150ce70eea4470c7851537943633bc6256f0ca4e64af72f7d474e6fe6b8d`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceebeb61511d80a4da9e238efd0a0536366f8de28c092460769885d6ac979094`  
		Last Modified: Wed, 23 Jan 2019 10:25:36 GMT  
		Size: 77.2 MB (77196004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476fbd672db08f5bdeb784274e261fbe136c61d66c12f2b7d792299d524ee08`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd105b81f56e86bed64b506d86d0c52c48e09742348f31572152c998fc538b0f`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:d8748cb8fdba78b82e2d6a9c2deae71a6b81a3efea1fd1fc2d18c0273331a387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:0b195e89d14523e421c9c6fe216108f9b894cd7d113f5a8fd043cc251ebe41c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d56154151cc59e57621a85f3dd4e6b6907e9b1af3ef8240783de125c1210865`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:27:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:27:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:27:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:27:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:28:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:28:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 09:28:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:28:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:28:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:28:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:28:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:28:24 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:28:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e68870878c1a9d2795935cd3a418f17531fe7489f084053282a2815d6772df`  
		Last Modified: Wed, 23 Jan 2019 09:31:10 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8b5cf6e675ad611618d0b88c16bf5526749e9eef4f4cc91b13881efdcea843`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f2b71b34f3bc3c5d6bc06e6ba0d3d47d56cad398419056f7b8d11b6976448`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 1.6 MB (1573044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f71c2cc5eba183a01f92dc948088fb231ffdf33fcf63ff58bba6ae10718b12`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f9135932f8d35189d7f9c7abb2817a54b691f4ee75feea09b7bc6aa114a0d0`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 4.3 MB (4262357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bea3336b9179e9eacfb48680f8ecd03ad8085bf080f15d02657b8acf2f0d8b`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4edcb6dd14ed69b341be611f13e73276edce15b00d84f258c8219804558ab0`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1c793463abbb286ec7a4f366951f08096ba29fc059ca3a1a25612c6ae76ca`  
		Last Modified: Wed, 23 Jan 2019 09:31:15 GMT  
		Size: 45.3 MB (45275591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e278eb00a930d7534b9ba6c30e61aa140bbf5d07d96fc62e28e4c2d7d745b3f`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b309ad437ed4a0e7b4abd3d738ae43ab2eb1dab52a1c8b3fab7e528fe9f4ff`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:9d389a8268ebb011a88000c2c73699f20e9150e045ad442ebee765f211ca1125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114575839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cffacf6eabd867df8512b9764b05a81fb957f01848829467b2943ffa4fdf88c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Thu, 24 Jan 2019 00:17:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:17:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:17:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:17:54 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:17:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:17:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:17:55 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:17:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9d5c0f150a100b0fe60b631ccc86acf53e69edb3a3ead697261f64f1382a66`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7c8d2ff427e7ba31c5a9b9edfc3ecf7957443418506e41dbc33b31ced8d8b2`  
		Last Modified: Thu, 24 Jan 2019 00:18:45 GMT  
		Size: 43.8 MB (43827030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c172f84bc0a0e3cfc1750e043ddcd4a14d7e6a32fe67c8e4f7e7ac1c61bb33d`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d513fa74d8321e8632bfa271e0e4361c07de043d0b4eb6a2c773a1d584abd63`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:cb239a7e8dace68a17b510e72d32dbd3cd108af71057fe92557d449e6d25963b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd2a0bb9d47028b96ab301efab02ff470093a2e407ba01561152071c8246818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:16 GMT
ADD file:77162be00699653557da346404aca871f34724cb893b9b3bde1594321740836f in / 
# Wed, 23 Jan 2019 09:27:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:27:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:27:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:19:32 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:19:50 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:19:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:20:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:22:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:22:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:22:20 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 10:22:22 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 10:22:25 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:23:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:23:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:23:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:23:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:23:36 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:23:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e8733439db87ec8c9721663c30b8c17a2bfff006deabfaa33c4e618aae063377`  
		Last Modified: Wed, 23 Jan 2019 09:31:14 GMT  
		Size: 69.8 MB (69810859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c78c7e8bf49f3e1ebce580ac3c2b36da360407fbc2b3795a79a5b051a1c78`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c2b9cdde0abb446b2ef65d7de528ee7b3d14dcf03572138ad8c22f9f7e6ed`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a93c992686cb7522b466f491d02610b1f153b651140dee73b2b751bf0e11e5`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e00105c013466af6ca3e5c1103be24469c03e64c935ca61701a9aa6d023f`  
		Last Modified: Wed, 23 Jan 2019 10:27:58 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbe3ecd9d39ee88efce4741be05713f2d382fe1a3e3f8c9485a82460d935bd9`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0a210f275541a647bbd24105f93d031d68cc59f179c63ec7755f0b033976ad`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 1.5 MB (1546277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dfdddfc3bc9f0310f8f1ec8d4a60248c05e79d232f97731a46959b8910a5f7`  
		Last Modified: Wed, 23 Jan 2019 10:27:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b9a58982514247d8441c5750656a02a30a2466adc33f7cbe8805831b87cde`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 4.3 MB (4288464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2dc6afadb567d1a66cad1b60697198c39e3a25a1aa8302cae096d40d923a0d`  
		Last Modified: Wed, 23 Jan 2019 10:27:53 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c00f4d44daf5443031b31815e98923b4a560683c136db4ea1c412e2acf786fa`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db00eb16e53ef6cc9fb68b6513644b1d3a2738e5825a752bea70fc682c9704`  
		Last Modified: Wed, 23 Jan 2019 10:28:01 GMT  
		Size: 36.2 MB (36189279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60bb6356357e18999b8ef159b72cf339d82a96d27051071a27459c010ee18e`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2acf250a5482451ed1eb7f6e00c37765131c39b77bd90d24ac943b4916c2cc`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:d8748cb8fdba78b82e2d6a9c2deae71a6b81a3efea1fd1fc2d18c0273331a387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:0b195e89d14523e421c9c6fe216108f9b894cd7d113f5a8fd043cc251ebe41c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d56154151cc59e57621a85f3dd4e6b6907e9b1af3ef8240783de125c1210865`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:27:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:27:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:27:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:27:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:28:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:28:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 09:28:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:28:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:28:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:28:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:28:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:28:24 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:28:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e68870878c1a9d2795935cd3a418f17531fe7489f084053282a2815d6772df`  
		Last Modified: Wed, 23 Jan 2019 09:31:10 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8b5cf6e675ad611618d0b88c16bf5526749e9eef4f4cc91b13881efdcea843`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f2b71b34f3bc3c5d6bc06e6ba0d3d47d56cad398419056f7b8d11b6976448`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 1.6 MB (1573044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f71c2cc5eba183a01f92dc948088fb231ffdf33fcf63ff58bba6ae10718b12`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f9135932f8d35189d7f9c7abb2817a54b691f4ee75feea09b7bc6aa114a0d0`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 4.3 MB (4262357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bea3336b9179e9eacfb48680f8ecd03ad8085bf080f15d02657b8acf2f0d8b`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4edcb6dd14ed69b341be611f13e73276edce15b00d84f258c8219804558ab0`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1c793463abbb286ec7a4f366951f08096ba29fc059ca3a1a25612c6ae76ca`  
		Last Modified: Wed, 23 Jan 2019 09:31:15 GMT  
		Size: 45.3 MB (45275591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e278eb00a930d7534b9ba6c30e61aa140bbf5d07d96fc62e28e4c2d7d745b3f`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b309ad437ed4a0e7b4abd3d738ae43ab2eb1dab52a1c8b3fab7e528fe9f4ff`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:9d389a8268ebb011a88000c2c73699f20e9150e045ad442ebee765f211ca1125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114575839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cffacf6eabd867df8512b9764b05a81fb957f01848829467b2943ffa4fdf88c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Thu, 24 Jan 2019 00:17:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:17:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:17:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:17:54 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:17:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:17:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:17:55 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:17:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9d5c0f150a100b0fe60b631ccc86acf53e69edb3a3ead697261f64f1382a66`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7c8d2ff427e7ba31c5a9b9edfc3ecf7957443418506e41dbc33b31ced8d8b2`  
		Last Modified: Thu, 24 Jan 2019 00:18:45 GMT  
		Size: 43.8 MB (43827030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c172f84bc0a0e3cfc1750e043ddcd4a14d7e6a32fe67c8e4f7e7ac1c61bb33d`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d513fa74d8321e8632bfa271e0e4361c07de043d0b4eb6a2c773a1d584abd63`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:cb239a7e8dace68a17b510e72d32dbd3cd108af71057fe92557d449e6d25963b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd2a0bb9d47028b96ab301efab02ff470093a2e407ba01561152071c8246818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:16 GMT
ADD file:77162be00699653557da346404aca871f34724cb893b9b3bde1594321740836f in / 
# Wed, 23 Jan 2019 09:27:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:27:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:27:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:19:32 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:19:50 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:19:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:20:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:22:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:22:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:22:20 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 10:22:22 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 10:22:25 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:23:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:23:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:23:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:23:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:23:36 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:23:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e8733439db87ec8c9721663c30b8c17a2bfff006deabfaa33c4e618aae063377`  
		Last Modified: Wed, 23 Jan 2019 09:31:14 GMT  
		Size: 69.8 MB (69810859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c78c7e8bf49f3e1ebce580ac3c2b36da360407fbc2b3795a79a5b051a1c78`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c2b9cdde0abb446b2ef65d7de528ee7b3d14dcf03572138ad8c22f9f7e6ed`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a93c992686cb7522b466f491d02610b1f153b651140dee73b2b751bf0e11e5`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e00105c013466af6ca3e5c1103be24469c03e64c935ca61701a9aa6d023f`  
		Last Modified: Wed, 23 Jan 2019 10:27:58 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbe3ecd9d39ee88efce4741be05713f2d382fe1a3e3f8c9485a82460d935bd9`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0a210f275541a647bbd24105f93d031d68cc59f179c63ec7755f0b033976ad`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 1.5 MB (1546277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dfdddfc3bc9f0310f8f1ec8d4a60248c05e79d232f97731a46959b8910a5f7`  
		Last Modified: Wed, 23 Jan 2019 10:27:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b9a58982514247d8441c5750656a02a30a2466adc33f7cbe8805831b87cde`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 4.3 MB (4288464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2dc6afadb567d1a66cad1b60697198c39e3a25a1aa8302cae096d40d923a0d`  
		Last Modified: Wed, 23 Jan 2019 10:27:53 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c00f4d44daf5443031b31815e98923b4a560683c136db4ea1c412e2acf786fa`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db00eb16e53ef6cc9fb68b6513644b1d3a2738e5825a752bea70fc682c9704`  
		Last Modified: Wed, 23 Jan 2019 10:28:01 GMT  
		Size: 36.2 MB (36189279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60bb6356357e18999b8ef159b72cf339d82a96d27051071a27459c010ee18e`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2acf250a5482451ed1eb7f6e00c37765131c39b77bd90d24ac943b4916c2cc`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.62`

```console
$ docker pull mariadb@sha256:d8748cb8fdba78b82e2d6a9c2deae71a6b81a3efea1fd1fc2d18c0273331a387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.62` - linux; amd64

```console
$ docker pull mariadb@sha256:0b195e89d14523e421c9c6fe216108f9b894cd7d113f5a8fd043cc251ebe41c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d56154151cc59e57621a85f3dd4e6b6907e9b1af3ef8240783de125c1210865`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:27:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:27:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:27:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:27:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:28:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:28:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 09:28:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:28:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:28:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:28:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:28:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:28:24 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:28:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e68870878c1a9d2795935cd3a418f17531fe7489f084053282a2815d6772df`  
		Last Modified: Wed, 23 Jan 2019 09:31:10 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8b5cf6e675ad611618d0b88c16bf5526749e9eef4f4cc91b13881efdcea843`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f2b71b34f3bc3c5d6bc06e6ba0d3d47d56cad398419056f7b8d11b6976448`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 1.6 MB (1573044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f71c2cc5eba183a01f92dc948088fb231ffdf33fcf63ff58bba6ae10718b12`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f9135932f8d35189d7f9c7abb2817a54b691f4ee75feea09b7bc6aa114a0d0`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 4.3 MB (4262357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bea3336b9179e9eacfb48680f8ecd03ad8085bf080f15d02657b8acf2f0d8b`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4edcb6dd14ed69b341be611f13e73276edce15b00d84f258c8219804558ab0`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1c793463abbb286ec7a4f366951f08096ba29fc059ca3a1a25612c6ae76ca`  
		Last Modified: Wed, 23 Jan 2019 09:31:15 GMT  
		Size: 45.3 MB (45275591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e278eb00a930d7534b9ba6c30e61aa140bbf5d07d96fc62e28e4c2d7d745b3f`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b309ad437ed4a0e7b4abd3d738ae43ab2eb1dab52a1c8b3fab7e528fe9f4ff`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62` - linux; 386

```console
$ docker pull mariadb@sha256:9d389a8268ebb011a88000c2c73699f20e9150e045ad442ebee765f211ca1125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114575839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cffacf6eabd867df8512b9764b05a81fb957f01848829467b2943ffa4fdf88c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Thu, 24 Jan 2019 00:17:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:17:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:17:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:17:54 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:17:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:17:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:17:55 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:17:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9d5c0f150a100b0fe60b631ccc86acf53e69edb3a3ead697261f64f1382a66`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7c8d2ff427e7ba31c5a9b9edfc3ecf7957443418506e41dbc33b31ced8d8b2`  
		Last Modified: Thu, 24 Jan 2019 00:18:45 GMT  
		Size: 43.8 MB (43827030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c172f84bc0a0e3cfc1750e043ddcd4a14d7e6a32fe67c8e4f7e7ac1c61bb33d`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d513fa74d8321e8632bfa271e0e4361c07de043d0b4eb6a2c773a1d584abd63`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62` - linux; ppc64le

```console
$ docker pull mariadb@sha256:cb239a7e8dace68a17b510e72d32dbd3cd108af71057fe92557d449e6d25963b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd2a0bb9d47028b96ab301efab02ff470093a2e407ba01561152071c8246818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:16 GMT
ADD file:77162be00699653557da346404aca871f34724cb893b9b3bde1594321740836f in / 
# Wed, 23 Jan 2019 09:27:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:27:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:27:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:19:32 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:19:50 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:19:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:20:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:22:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:22:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:22:20 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 10:22:22 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 10:22:25 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:23:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:23:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:23:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:23:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:23:36 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:23:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e8733439db87ec8c9721663c30b8c17a2bfff006deabfaa33c4e618aae063377`  
		Last Modified: Wed, 23 Jan 2019 09:31:14 GMT  
		Size: 69.8 MB (69810859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c78c7e8bf49f3e1ebce580ac3c2b36da360407fbc2b3795a79a5b051a1c78`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c2b9cdde0abb446b2ef65d7de528ee7b3d14dcf03572138ad8c22f9f7e6ed`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a93c992686cb7522b466f491d02610b1f153b651140dee73b2b751bf0e11e5`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e00105c013466af6ca3e5c1103be24469c03e64c935ca61701a9aa6d023f`  
		Last Modified: Wed, 23 Jan 2019 10:27:58 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbe3ecd9d39ee88efce4741be05713f2d382fe1a3e3f8c9485a82460d935bd9`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0a210f275541a647bbd24105f93d031d68cc59f179c63ec7755f0b033976ad`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 1.5 MB (1546277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dfdddfc3bc9f0310f8f1ec8d4a60248c05e79d232f97731a46959b8910a5f7`  
		Last Modified: Wed, 23 Jan 2019 10:27:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b9a58982514247d8441c5750656a02a30a2466adc33f7cbe8805831b87cde`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 4.3 MB (4288464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2dc6afadb567d1a66cad1b60697198c39e3a25a1aa8302cae096d40d923a0d`  
		Last Modified: Wed, 23 Jan 2019 10:27:53 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c00f4d44daf5443031b31815e98923b4a560683c136db4ea1c412e2acf786fa`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db00eb16e53ef6cc9fb68b6513644b1d3a2738e5825a752bea70fc682c9704`  
		Last Modified: Wed, 23 Jan 2019 10:28:01 GMT  
		Size: 36.2 MB (36189279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60bb6356357e18999b8ef159b72cf339d82a96d27051071a27459c010ee18e`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2acf250a5482451ed1eb7f6e00c37765131c39b77bd90d24ac943b4916c2cc`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.62-trusty`

```console
$ docker pull mariadb@sha256:d8748cb8fdba78b82e2d6a9c2deae71a6b81a3efea1fd1fc2d18c0273331a387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.62-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:0b195e89d14523e421c9c6fe216108f9b894cd7d113f5a8fd043cc251ebe41c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d56154151cc59e57621a85f3dd4e6b6907e9b1af3ef8240783de125c1210865`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:27:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:27:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:27:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:27:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:28:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:28:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 09:28:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:28:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:28:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:28:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:28:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:28:24 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:28:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e68870878c1a9d2795935cd3a418f17531fe7489f084053282a2815d6772df`  
		Last Modified: Wed, 23 Jan 2019 09:31:10 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8b5cf6e675ad611618d0b88c16bf5526749e9eef4f4cc91b13881efdcea843`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f2b71b34f3bc3c5d6bc06e6ba0d3d47d56cad398419056f7b8d11b6976448`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 1.6 MB (1573044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f71c2cc5eba183a01f92dc948088fb231ffdf33fcf63ff58bba6ae10718b12`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f9135932f8d35189d7f9c7abb2817a54b691f4ee75feea09b7bc6aa114a0d0`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 4.3 MB (4262357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bea3336b9179e9eacfb48680f8ecd03ad8085bf080f15d02657b8acf2f0d8b`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4edcb6dd14ed69b341be611f13e73276edce15b00d84f258c8219804558ab0`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1c793463abbb286ec7a4f366951f08096ba29fc059ca3a1a25612c6ae76ca`  
		Last Modified: Wed, 23 Jan 2019 09:31:15 GMT  
		Size: 45.3 MB (45275591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e278eb00a930d7534b9ba6c30e61aa140bbf5d07d96fc62e28e4c2d7d745b3f`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b309ad437ed4a0e7b4abd3d738ae43ab2eb1dab52a1c8b3fab7e528fe9f4ff`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:9d389a8268ebb011a88000c2c73699f20e9150e045ad442ebee765f211ca1125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114575839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cffacf6eabd867df8512b9764b05a81fb957f01848829467b2943ffa4fdf88c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Thu, 24 Jan 2019 00:17:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:17:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:17:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:17:54 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:17:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:17:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:17:55 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:17:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9d5c0f150a100b0fe60b631ccc86acf53e69edb3a3ead697261f64f1382a66`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7c8d2ff427e7ba31c5a9b9edfc3ecf7957443418506e41dbc33b31ced8d8b2`  
		Last Modified: Thu, 24 Jan 2019 00:18:45 GMT  
		Size: 43.8 MB (43827030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c172f84bc0a0e3cfc1750e043ddcd4a14d7e6a32fe67c8e4f7e7ac1c61bb33d`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d513fa74d8321e8632bfa271e0e4361c07de043d0b4eb6a2c773a1d584abd63`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:cb239a7e8dace68a17b510e72d32dbd3cd108af71057fe92557d449e6d25963b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd2a0bb9d47028b96ab301efab02ff470093a2e407ba01561152071c8246818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:16 GMT
ADD file:77162be00699653557da346404aca871f34724cb893b9b3bde1594321740836f in / 
# Wed, 23 Jan 2019 09:27:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:27:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:27:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:19:32 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:19:50 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:19:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:20:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:22:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:22:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:22:20 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 10:22:22 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 10:22:25 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:23:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:23:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:23:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:23:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:23:36 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:23:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e8733439db87ec8c9721663c30b8c17a2bfff006deabfaa33c4e618aae063377`  
		Last Modified: Wed, 23 Jan 2019 09:31:14 GMT  
		Size: 69.8 MB (69810859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c78c7e8bf49f3e1ebce580ac3c2b36da360407fbc2b3795a79a5b051a1c78`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c2b9cdde0abb446b2ef65d7de528ee7b3d14dcf03572138ad8c22f9f7e6ed`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a93c992686cb7522b466f491d02610b1f153b651140dee73b2b751bf0e11e5`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e00105c013466af6ca3e5c1103be24469c03e64c935ca61701a9aa6d023f`  
		Last Modified: Wed, 23 Jan 2019 10:27:58 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbe3ecd9d39ee88efce4741be05713f2d382fe1a3e3f8c9485a82460d935bd9`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0a210f275541a647bbd24105f93d031d68cc59f179c63ec7755f0b033976ad`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 1.5 MB (1546277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dfdddfc3bc9f0310f8f1ec8d4a60248c05e79d232f97731a46959b8910a5f7`  
		Last Modified: Wed, 23 Jan 2019 10:27:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b9a58982514247d8441c5750656a02a30a2466adc33f7cbe8805831b87cde`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 4.3 MB (4288464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2dc6afadb567d1a66cad1b60697198c39e3a25a1aa8302cae096d40d923a0d`  
		Last Modified: Wed, 23 Jan 2019 10:27:53 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c00f4d44daf5443031b31815e98923b4a560683c136db4ea1c412e2acf786fa`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db00eb16e53ef6cc9fb68b6513644b1d3a2738e5825a752bea70fc682c9704`  
		Last Modified: Wed, 23 Jan 2019 10:28:01 GMT  
		Size: 36.2 MB (36189279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60bb6356357e18999b8ef159b72cf339d82a96d27051071a27459c010ee18e`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2acf250a5482451ed1eb7f6e00c37765131c39b77bd90d24ac943b4916c2cc`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:d8748cb8fdba78b82e2d6a9c2deae71a6b81a3efea1fd1fc2d18c0273331a387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:0b195e89d14523e421c9c6fe216108f9b894cd7d113f5a8fd043cc251ebe41c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d56154151cc59e57621a85f3dd4e6b6907e9b1af3ef8240783de125c1210865`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:27:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:27:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:27:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:27:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:28:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:28:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 09:28:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:28:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:28:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:28:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:28:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:28:24 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:28:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e68870878c1a9d2795935cd3a418f17531fe7489f084053282a2815d6772df`  
		Last Modified: Wed, 23 Jan 2019 09:31:10 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8b5cf6e675ad611618d0b88c16bf5526749e9eef4f4cc91b13881efdcea843`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f2b71b34f3bc3c5d6bc06e6ba0d3d47d56cad398419056f7b8d11b6976448`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 1.6 MB (1573044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f71c2cc5eba183a01f92dc948088fb231ffdf33fcf63ff58bba6ae10718b12`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f9135932f8d35189d7f9c7abb2817a54b691f4ee75feea09b7bc6aa114a0d0`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 4.3 MB (4262357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bea3336b9179e9eacfb48680f8ecd03ad8085bf080f15d02657b8acf2f0d8b`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4edcb6dd14ed69b341be611f13e73276edce15b00d84f258c8219804558ab0`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1c793463abbb286ec7a4f366951f08096ba29fc059ca3a1a25612c6ae76ca`  
		Last Modified: Wed, 23 Jan 2019 09:31:15 GMT  
		Size: 45.3 MB (45275591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e278eb00a930d7534b9ba6c30e61aa140bbf5d07d96fc62e28e4c2d7d745b3f`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b309ad437ed4a0e7b4abd3d738ae43ab2eb1dab52a1c8b3fab7e528fe9f4ff`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:9d389a8268ebb011a88000c2c73699f20e9150e045ad442ebee765f211ca1125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114575839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cffacf6eabd867df8512b9764b05a81fb957f01848829467b2943ffa4fdf88c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Thu, 24 Jan 2019 00:17:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:17:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:17:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:17:54 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:17:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:17:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:17:55 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:17:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9d5c0f150a100b0fe60b631ccc86acf53e69edb3a3ead697261f64f1382a66`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7c8d2ff427e7ba31c5a9b9edfc3ecf7957443418506e41dbc33b31ced8d8b2`  
		Last Modified: Thu, 24 Jan 2019 00:18:45 GMT  
		Size: 43.8 MB (43827030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c172f84bc0a0e3cfc1750e043ddcd4a14d7e6a32fe67c8e4f7e7ac1c61bb33d`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d513fa74d8321e8632bfa271e0e4361c07de043d0b4eb6a2c773a1d584abd63`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:cb239a7e8dace68a17b510e72d32dbd3cd108af71057fe92557d449e6d25963b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd2a0bb9d47028b96ab301efab02ff470093a2e407ba01561152071c8246818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:16 GMT
ADD file:77162be00699653557da346404aca871f34724cb893b9b3bde1594321740836f in / 
# Wed, 23 Jan 2019 09:27:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:27:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:27:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:19:32 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:19:50 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:19:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:20:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:22:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:22:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:22:20 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 10:22:22 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 10:22:25 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:23:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:23:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:23:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:23:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:23:36 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:23:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e8733439db87ec8c9721663c30b8c17a2bfff006deabfaa33c4e618aae063377`  
		Last Modified: Wed, 23 Jan 2019 09:31:14 GMT  
		Size: 69.8 MB (69810859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c78c7e8bf49f3e1ebce580ac3c2b36da360407fbc2b3795a79a5b051a1c78`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c2b9cdde0abb446b2ef65d7de528ee7b3d14dcf03572138ad8c22f9f7e6ed`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a93c992686cb7522b466f491d02610b1f153b651140dee73b2b751bf0e11e5`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e00105c013466af6ca3e5c1103be24469c03e64c935ca61701a9aa6d023f`  
		Last Modified: Wed, 23 Jan 2019 10:27:58 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbe3ecd9d39ee88efce4741be05713f2d382fe1a3e3f8c9485a82460d935bd9`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0a210f275541a647bbd24105f93d031d68cc59f179c63ec7755f0b033976ad`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 1.5 MB (1546277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dfdddfc3bc9f0310f8f1ec8d4a60248c05e79d232f97731a46959b8910a5f7`  
		Last Modified: Wed, 23 Jan 2019 10:27:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b9a58982514247d8441c5750656a02a30a2466adc33f7cbe8805831b87cde`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 4.3 MB (4288464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2dc6afadb567d1a66cad1b60697198c39e3a25a1aa8302cae096d40d923a0d`  
		Last Modified: Wed, 23 Jan 2019 10:27:53 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c00f4d44daf5443031b31815e98923b4a560683c136db4ea1c412e2acf786fa`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db00eb16e53ef6cc9fb68b6513644b1d3a2738e5825a752bea70fc682c9704`  
		Last Modified: Wed, 23 Jan 2019 10:28:01 GMT  
		Size: 36.2 MB (36189279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60bb6356357e18999b8ef159b72cf339d82a96d27051071a27459c010ee18e`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2acf250a5482451ed1eb7f6e00c37765131c39b77bd90d24ac943b4916c2cc`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:d8748cb8fdba78b82e2d6a9c2deae71a6b81a3efea1fd1fc2d18c0273331a387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:0b195e89d14523e421c9c6fe216108f9b894cd7d113f5a8fd043cc251ebe41c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d56154151cc59e57621a85f3dd4e6b6907e9b1af3ef8240783de125c1210865`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:27:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:27:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:27:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:27:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:28:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:28:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 09:28:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 09:28:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:28:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:28:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:28:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:28:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:28:24 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:28:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e68870878c1a9d2795935cd3a418f17531fe7489f084053282a2815d6772df`  
		Last Modified: Wed, 23 Jan 2019 09:31:10 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8b5cf6e675ad611618d0b88c16bf5526749e9eef4f4cc91b13881efdcea843`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f2b71b34f3bc3c5d6bc06e6ba0d3d47d56cad398419056f7b8d11b6976448`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 1.6 MB (1573044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f71c2cc5eba183a01f92dc948088fb231ffdf33fcf63ff58bba6ae10718b12`  
		Last Modified: Wed, 23 Jan 2019 09:31:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f9135932f8d35189d7f9c7abb2817a54b691f4ee75feea09b7bc6aa114a0d0`  
		Last Modified: Wed, 23 Jan 2019 09:31:07 GMT  
		Size: 4.3 MB (4262357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bea3336b9179e9eacfb48680f8ecd03ad8085bf080f15d02657b8acf2f0d8b`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4edcb6dd14ed69b341be611f13e73276edce15b00d84f258c8219804558ab0`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1c793463abbb286ec7a4f366951f08096ba29fc059ca3a1a25612c6ae76ca`  
		Last Modified: Wed, 23 Jan 2019 09:31:15 GMT  
		Size: 45.3 MB (45275591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e278eb00a930d7534b9ba6c30e61aa140bbf5d07d96fc62e28e4c2d7d745b3f`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b309ad437ed4a0e7b4abd3d738ae43ab2eb1dab52a1c8b3fab7e528fe9f4ff`  
		Last Modified: Wed, 23 Jan 2019 09:31:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:9d389a8268ebb011a88000c2c73699f20e9150e045ad442ebee765f211ca1125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114575839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cffacf6eabd867df8512b9764b05a81fb957f01848829467b2943ffa4fdf88c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Thu, 24 Jan 2019 00:17:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 24 Jan 2019 00:17:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 24 Jan 2019 00:17:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 24 Jan 2019 00:17:54 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Thu, 24 Jan 2019 00:17:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 24 Jan 2019 00:17:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 00:17:55 GMT
EXPOSE 3306
# Thu, 24 Jan 2019 00:17:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9d5c0f150a100b0fe60b631ccc86acf53e69edb3a3ead697261f64f1382a66`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7c8d2ff427e7ba31c5a9b9edfc3ecf7957443418506e41dbc33b31ced8d8b2`  
		Last Modified: Thu, 24 Jan 2019 00:18:45 GMT  
		Size: 43.8 MB (43827030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c172f84bc0a0e3cfc1750e043ddcd4a14d7e6a32fe67c8e4f7e7ac1c61bb33d`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d513fa74d8321e8632bfa271e0e4361c07de043d0b4eb6a2c773a1d584abd63`  
		Last Modified: Thu, 24 Jan 2019 00:18:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:cb239a7e8dace68a17b510e72d32dbd3cd108af71057fe92557d449e6d25963b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111929715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd2a0bb9d47028b96ab301efab02ff470093a2e407ba01561152071c8246818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:16 GMT
ADD file:77162be00699653557da346404aca871f34724cb893b9b3bde1594321740836f in / 
# Wed, 23 Jan 2019 09:27:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:27:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:27:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:27:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:19:32 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:19:50 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:19:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:20:43 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:22:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:22:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:22:20 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 23 Jan 2019 10:22:22 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Wed, 23 Jan 2019 10:22:25 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:23:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:23:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:23:23 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:23:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:23:36 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:23:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e8733439db87ec8c9721663c30b8c17a2bfff006deabfaa33c4e618aae063377`  
		Last Modified: Wed, 23 Jan 2019 09:31:14 GMT  
		Size: 69.8 MB (69810859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c78c7e8bf49f3e1ebce580ac3c2b36da360407fbc2b3795a79a5b051a1c78`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c2b9cdde0abb446b2ef65d7de528ee7b3d14dcf03572138ad8c22f9f7e6ed`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a93c992686cb7522b466f491d02610b1f153b651140dee73b2b751bf0e11e5`  
		Last Modified: Wed, 23 Jan 2019 09:30:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e00105c013466af6ca3e5c1103be24469c03e64c935ca61701a9aa6d023f`  
		Last Modified: Wed, 23 Jan 2019 10:27:58 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbe3ecd9d39ee88efce4741be05713f2d382fe1a3e3f8c9485a82460d935bd9`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0a210f275541a647bbd24105f93d031d68cc59f179c63ec7755f0b033976ad`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 1.5 MB (1546277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dfdddfc3bc9f0310f8f1ec8d4a60248c05e79d232f97731a46959b8910a5f7`  
		Last Modified: Wed, 23 Jan 2019 10:27:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b9a58982514247d8441c5750656a02a30a2466adc33f7cbe8805831b87cde`  
		Last Modified: Wed, 23 Jan 2019 10:27:57 GMT  
		Size: 4.3 MB (4288464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2dc6afadb567d1a66cad1b60697198c39e3a25a1aa8302cae096d40d923a0d`  
		Last Modified: Wed, 23 Jan 2019 10:27:53 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c00f4d44daf5443031b31815e98923b4a560683c136db4ea1c412e2acf786fa`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db00eb16e53ef6cc9fb68b6513644b1d3a2738e5825a752bea70fc682c9704`  
		Last Modified: Wed, 23 Jan 2019 10:28:01 GMT  
		Size: 36.2 MB (36189279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60bb6356357e18999b8ef159b72cf339d82a96d27051071a27459c010ee18e`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2acf250a5482451ed1eb7f6e00c37765131c39b77bd90d24ac943b4916c2cc`  
		Last Modified: Wed, 23 Jan 2019 10:27:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:eb6acf7f599f39c42582e11b1de3866c3934da84cc45190c0aac3e8d046e4053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:4db64a621651412b2525104506a1f5901ef76bd5a62257bd818c37cbb2a300fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901583bfdf5a129ba68b033c989dab7f10d2a9235c3a2093ad16f9ac979ac9f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 09:23:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:57 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:58 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d8b012ee89a3520f70fa031173a97e202d2e12ff98724f07f70f28ad162a2`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb787f18e3dea59864cf49e69608d134729d73deef1962694d411fdd624dae0`  
		Last Modified: Wed, 23 Jan 2019 09:29:23 GMT  
		Size: 74.3 MB (74279087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cfbee5299afb101c2b94b809d3bcfbc606a41b840423f0e5de5092b3e7171`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa7c8911619901874e6492188248c5058d9981d216e5f672c9634b9ee313aeb`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7da7e03a4751718b384a53b9cb6127be5b999ba538a2c29f4024b03e6b4cb759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568c7d36f080aa16bfd13b65c6a0ab316ff9aaed64b70bb3faa07b53b26371b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:58:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 10:59:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:00:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:00:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:01:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:01:43 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:01:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:05:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 11:05:03 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 11:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 11:07:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 11:07:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 11:07:36 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:07:44 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 11:07:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebb05c29307d9bbc9426b4154bbdaaa959c68c9660b76b446f290ccc1216030`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c1f5c90c1886ac580849f02c96d98b5a04d3e6e6bd9bf3082eb1bb0fa0f276`  
		Last Modified: Fri, 25 Jan 2019 00:28:03 GMT  
		Size: 4.4 MB (4389069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b286340d022327c29cfcb30462f4a5c712450a311a9a4c92c48ea880975f28`  
		Last Modified: Fri, 25 Jan 2019 00:27:55 GMT  
		Size: 830.5 KB (830457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67cd4d9595f6c34018619e40b7841b3678c0f815dce4b4a900cdbedf68cca98`  
		Last Modified: Fri, 25 Jan 2019 00:27:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66495a787039bf621ae98fea2ada9d7667d3246616c9bcaf5c1f765ac16fc21`  
		Last Modified: Fri, 25 Jan 2019 00:28:05 GMT  
		Size: 2.7 MB (2705031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a237f290ec7c296874bc0836f79dd39b4cf15f13bf52296e383130cfacbf56`  
		Last Modified: Fri, 25 Jan 2019 00:27:50 GMT  
		Size: 25.4 KB (25439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a4fc52a6afed9d96d9fad7cb3914d605a23120e01f10065bdab40a6ba3c64`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe10808173c8a0935398d649770c3cc75df0e465b2d96ddfc2dd043eef72443`  
		Last Modified: Fri, 25 Jan 2019 00:29:57 GMT  
		Size: 73.2 MB (73196318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13e66a5aca666bf56e6e99ae3eda0112f2e2b60a2e11f98789042bdb1a23b1`  
		Last Modified: Fri, 25 Jan 2019 00:29:07 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4452cdefbc13aa6e2fc39cc94146305b31f35b0c3b421b075a4da6510909d2`  
		Last Modified: Fri, 25 Jan 2019 00:29:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f709b0c43d2d84d51c3f5bf7aa850819ae1219730ff0bc5614823f2655cbda2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122191961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617bf0c1f31e1c8ca9eba340a23cde7b522aec0751c8fc13fb5713bf8ffdf23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:05:07 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 10:05:10 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 10:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:07:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:07:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:07:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:08:12 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:08:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac150ce70eea4470c7851537943633bc6256f0ca4e64af72f7d474e6fe6b8d`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceebeb61511d80a4da9e238efd0a0536366f8de28c092460769885d6ac979094`  
		Last Modified: Wed, 23 Jan 2019 10:25:36 GMT  
		Size: 77.2 MB (77196004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476fbd672db08f5bdeb784274e261fbe136c61d66c12f2b7d792299d524ee08`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd105b81f56e86bed64b506d86d0c52c48e09742348f31572152c998fc538b0f`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:8c167d9b76ba73365b3ddbeaceb5054047f4ce7456d3d7bb1c11b12916e19ba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:4db64a621651412b2525104506a1f5901ef76bd5a62257bd818c37cbb2a300fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901583bfdf5a129ba68b033c989dab7f10d2a9235c3a2093ad16f9ac979ac9f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:21:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:21:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:21:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 09:22:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 09:22:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 09:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:22:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 09:22:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 09:23:20 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 09:23:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 09:23:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 09:23:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 09:23:57 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:23:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 09:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 09:23:58 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 09:23:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6984cb58751827ed37f87fef07635be81209acbe37c17f4642f971e3e7393`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a173c4702b47a2a459b768364d5e01fce2ce3afa1fa517a8f238b670434854a`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 4.8 MB (4804417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd003ff8e24025a076c2703567e7404380ee9843e23423f63a35c14230b8478`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 863.8 KB (863792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d307914438e83c003fa8ab424e20b0ef8fd9d86fca19f7f7783a1401c90e1`  
		Last Modified: Wed, 23 Jan 2019 09:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e943c9e01dff4db60b232ee435dd06beb89c5e897216dd292040826f1a943d`  
		Last Modified: Wed, 23 Jan 2019 09:28:45 GMT  
		Size: 3.0 MB (2961761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5243a434e4fb86cd91cd8c3a953212d11fab17608d01c44fce2f3758586a792`  
		Last Modified: Wed, 23 Jan 2019 09:28:43 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d8b012ee89a3520f70fa031173a97e202d2e12ff98724f07f70f28ad162a2`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb787f18e3dea59864cf49e69608d134729d73deef1962694d411fdd624dae0`  
		Last Modified: Wed, 23 Jan 2019 09:29:23 GMT  
		Size: 74.3 MB (74279087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cfbee5299afb101c2b94b809d3bcfbc606a41b840423f0e5de5092b3e7171`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa7c8911619901874e6492188248c5058d9981d216e5f672c9634b9ee313aeb`  
		Last Modified: Wed, 23 Jan 2019 09:29:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:5c04558534f6bea4f13eaa60bfadd7ee979214895d7b802cf6843ad7bef45b96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110088153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c5a1ecaa8bd45b9f00f9c8d0ac0665c2709185defae2b4af460735658087f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:31:54 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:31:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:32:31 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:32:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:33:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:36:21 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 09 Jan 2019 11:05:35 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 09 Jan 2019 11:05:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 09 Jan 2019 11:07:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 09 Jan 2019 11:07:11 GMT
VOLUME [/var/lib/mysql]
# Wed, 09 Jan 2019 11:07:12 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 09 Jan 2019 11:07:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 Jan 2019 11:07:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Jan 2019 11:07:16 GMT
EXPOSE 3306
# Wed, 09 Jan 2019 11:07:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0550a0b5da9608e6cb8fe3fe0e1105932ac8a2f33e9a9cfbab72785eeed8f2a`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a57b0139afbc8cced1c8a9d7e7a01e0c4ce3ea275dd637bc388c4339d8afa5`  
		Last Modified: Sat, 29 Dec 2018 10:51:59 GMT  
		Size: 4.4 MB (4387790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047dc10cbebcd4d2633aa7fa15192665b8b71fd97456ca68a60c40325f146e7e`  
		Last Modified: Sat, 29 Dec 2018 10:51:57 GMT  
		Size: 830.0 KB (829953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2939672d2254ed17f1cb3ffed6eb917c2fefb5bce1741ddd23651316003330f`  
		Last Modified: Sat, 29 Dec 2018 10:51:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacf3950020c4aa6f59d7c24f0e0faba7f3ce8855c2a7c6a563ab45082c18517`  
		Last Modified: Sat, 29 Dec 2018 10:51:58 GMT  
		Size: 2.7 MB (2700426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f36aced08010ef7639c2a14bd177fe8b2ebd769d5867313dcabaf5f43e72`  
		Last Modified: Sat, 29 Dec 2018 10:51:54 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6651113fb83bb9c27a7b610fb0f50bf22ce2f235b501f328df3537fbb43f56`  
		Last Modified: Wed, 09 Jan 2019 11:08:13 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf858a6ebf2730cfd13488a77b8998213b9c45f3834e462ee79cecaaaa574e`  
		Last Modified: Wed, 09 Jan 2019 11:08:42 GMT  
		Size: 73.2 MB (73195536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a7cf0c23328762187a1ed62052ee378f5ea49e65510c56381a5a0a181db111`  
		Last Modified: Wed, 09 Jan 2019 11:08:13 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d23a0abe012f98fdbf5682489aee771e3057f6bb5041555514ab179ddb38cc`  
		Last Modified: Wed, 09 Jan 2019 11:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f709b0c43d2d84d51c3f5bf7aa850819ae1219730ff0bc5614823f2655cbda2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122191961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617bf0c1f31e1c8ca9eba340a23cde7b522aec0751c8fc13fb5713bf8ffdf23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 09:24:34 GMT
ADD file:dddd247ed210c5eeff79c4c19ac2e2e07d80470280a73399593dab41966f4383 in / 
# Wed, 23 Jan 2019 09:24:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:24:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:25:04 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:58:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 09:59:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:59:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 10:00:30 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 10:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 10:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:01:22 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 10:01:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 10:05:07 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 23 Jan 2019 10:05:10 GMT
ENV MARIADB_VERSION=1:10.3.12+maria~bionic
# Wed, 23 Jan 2019 10:05:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 23 Jan 2019 10:07:37 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 10:07:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 10:07:51 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 10:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 10:08:12 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 10:08:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:655bd54e6c7cde48d40405c7ca693e9b237ce9cd71822058ebdbbac0bee0f3e6`  
		Last Modified: Wed, 23 Jan 2019 09:29:28 GMT  
		Size: 35.7 MB (35663590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480fa5ff3a9930b676fe8984f1f32d11de16508adfcb8b8a5d90846a6ab4516`  
		Last Modified: Wed, 23 Jan 2019 09:29:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42171a1ac4ca8fb596dffdb5fc2c22285daa7f9e4265d70b52f0c91338007bad`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2cdf43fcab36f2a07dff210d32e1846085ec9e2f861a65de1ef79ad8c6b76`  
		Last Modified: Wed, 23 Jan 2019 09:29:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3a02e70b31d87dc917c71e1e1c3c547d61d750f643d856781b47c35e3cb8df`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4493da1ca3ef334cd552bacb5e17cfe7be225f1a4f1dc09f3a96a2b246b5c11d`  
		Last Modified: Wed, 23 Jan 2019 10:24:22 GMT  
		Size: 5.6 MB (5625021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c351ad51d09b5e0bbd822fca307aff07fc94f44de174600f859592cbd81f9d`  
		Last Modified: Wed, 23 Jan 2019 10:24:19 GMT  
		Size: 832.3 KB (832258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a90bc2d3fd86363bc39e91203539dd5f834b750229b41fa0efc4eaa64f870a1`  
		Last Modified: Wed, 23 Jan 2019 10:24:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9725ae6b453028281cf67b29fdb9b1349c8b13290c39b261d6bd4d3c8b6232`  
		Last Modified: Wed, 23 Jan 2019 10:24:21 GMT  
		Size: 2.8 MB (2842935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e713c249eed6ccf5c3e528fe0d6dddafd07a823fe97f1af3fc5358e319a3f6a`  
		Last Modified: Wed, 23 Jan 2019 10:24:14 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac150ce70eea4470c7851537943633bc6256f0ca4e64af72f7d474e6fe6b8d`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceebeb61511d80a4da9e238efd0a0536366f8de28c092460769885d6ac979094`  
		Last Modified: Wed, 23 Jan 2019 10:25:36 GMT  
		Size: 77.2 MB (77196004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476fbd672db08f5bdeb784274e261fbe136c61d66c12f2b7d792299d524ee08`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd105b81f56e86bed64b506d86d0c52c48e09742348f31572152c998fc538b0f`  
		Last Modified: Wed, 23 Jan 2019 10:25:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
