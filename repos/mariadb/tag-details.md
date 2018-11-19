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
$ docker pull mariadb@sha256:2dbdd168c07b3817df9b3088ef1b6072325e65569ab543b9142d1ae82cb08d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:a5a80015bbba8daeb1e9820a7822c4f4107bd59391e24368ab2a4d99c64660ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115014012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030c8f4efcc5940b1a3d29c5815a72fdf4c68865ced3bf6733f2b50fb6a4450`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:25:49 GMT
ENV MARIADB_MAJOR=10.3
# Mon, 19 Nov 2018 22:25:50 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Mon, 19 Nov 2018 22:25:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:26:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:26:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:26:16 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:26:18 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:26:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9916314a1d85ce6ef7e94d8459cdf1971fade7d4ec12856eef5d00bf145c6a`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed4bbba52deb41777f9728b2dec9def332ebdc0dac89601d2cd2e55e09ce7`  
		Last Modified: Mon, 19 Nov 2018 22:35:02 GMT  
		Size: 74.3 MB (74256134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f2a29c99a6cc27bf64b264b6a39aaedc7e6c66d64c8d6e0317cea0df3cd6a2`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a003e0ca99e5c8976dd3fa2194dfd008142d860e5c9c7c1991c4c8e1a72c6918`  
		Last Modified: Mon, 19 Nov 2018 22:34:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7b83470957763818550700a46bbacdfd9e74bfca2603fe8e2ab98b76f99529ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109980829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0f2a5499591c76400315b1a6d16d579a8beda6088700b05b3ebbc45aceade7`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:40:58 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 11:40:59 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 11:41:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:42:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:42:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:42:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:42:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:42:30 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:42:31 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67f96cd05b73be4913eccb0cff841b0dec56727d5957598efcd56325f156f1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b904acfa80859eb6c805a2c4913724deba5023e3bf0e956513c491d63c7ccd7`  
		Last Modified: Fri, 16 Nov 2018 11:56:31 GMT  
		Size: 73.2 MB (73207249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf9affdb740eabe8b8dc51a0a5211f5676fb4646a665cb2ea47ae2a9f4c7013`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab703cb6faa3032c430ecfdc1f36bdb255da06db4c0208f17be7de1c0af39a1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3a12ec74c3546fe1a4275e99f88e29d8c5d5f831cbd5995ca51c5a69deeb5b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc268ec093744bd089c9fe7f109f8cb6d6149b82e5d75e29d00d83d01d87ab8e`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:48:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 12:48:17 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 12:48:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:49:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:49:54 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:49:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:50:01 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:50:02 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f48891567107c4c5d4dd03493824c42fa16d6536970e94bccd7b26d2de6c19`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15408124ea4e6669572e6e8610b874418f1b6ca6ab3432fb30462b67b3579c91`  
		Last Modified: Fri, 16 Nov 2018 13:05:56 GMT  
		Size: 77.2 MB (77188880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1742667d70c3f6f27db7c8af7a87fab346b064800a180a56dff0192e57d1cf14`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27810f98d58b7f0e97785304abf0298b0058d8d94f9ccc4b2f9466e39575fdc4`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:8e88d4cf0cf4f20a8d03321139a1821cf21752ec793769b9f7acc28c429e0168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:2107051403260c3cf3fb8ae4696a27e6867f43f09a795e1dc9b41999d1e4d3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116010948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d8750d0dd436d7226a307fa1ea7cce5be8d8ebca5c984ce0fbbd4f7febf7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:29:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:29:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:29:34 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:29:42 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:29:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:29:54 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:29:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:29:56 GMT
ENV MARIADB_MAJOR=10.0
# Mon, 19 Nov 2018 22:29:56 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Mon, 19 Nov 2018 22:29:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:30:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:30:35 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:30:35 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:30:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:30:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:30:37 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:30:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6723b6fbbe9b35a89f740a2577adf4802d5feb0061222346ebb69ea0954da7`  
		Last Modified: Mon, 19 Nov 2018 22:41:17 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793b751dcbdfbe4aea8f29699fc08b32e8d056968ad08e2a1e46e2c7f9fa7088`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9bbda3f54918e8cc3079161404e274050cc04c3d834c7e03cdd0621ca364c2`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 840.8 KB (840766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65515c2213a9223f8392e5a232cc34b458168253d5731206f43f563a344c8669`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898651b716adbb173819e8bef0a939b3c3f108ea5df58ad3f53717643ecdb964`  
		Last Modified: Mon, 19 Nov 2018 22:41:17 GMT  
		Size: 7.3 MB (7325554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922ef3d57d5474129e0ca6069bc31cdc0dca1768c8b7b4ed74c4a5a096ad4717`  
		Last Modified: Mon, 19 Nov 2018 22:41:15 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5fceef23b4673867c0c40c8f2833ec3e94c4d6150b48c059752cb79eae7c8e`  
		Last Modified: Mon, 19 Nov 2018 22:41:15 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752c9487f0edbaf43669fbef6dc50748c669923b3f555303ef9d6edd15800fe8`  
		Last Modified: Mon, 19 Nov 2018 22:41:27 GMT  
		Size: 64.4 MB (64400248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5e4efd35842fed4921cf8d396119a54171e151e0275a9da51d110c39e184e`  
		Last Modified: Mon, 19 Nov 2018 22:41:14 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aaf86e876fc51e4c0de81ca79dda89560d089f8512b5ea56af0bd4de04cc016`  
		Last Modified: Mon, 19 Nov 2018 22:41:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:3fd4159a56fda4c364fcdba03642c8f209329336de0b750832177bf3c6edbfca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99037456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a19ca7ff3172b22effe16504f84d400ce7d882ee3482a28b96f93cd595c0e87`
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
# Fri, 16 Nov 2018 11:48:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:48:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:49:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:49:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:49:52 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 11:49:53 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 11:49:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:52:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:52:25 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:52:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:52:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:52:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:52:33 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:52:35 GMT
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
	-	`sha256:c8ae503ae7ed088fa9706edc35ed6b3ddaa29cb017089d43fd3790dcee52acf1`  
		Last Modified: Fri, 16 Nov 2018 12:02:50 GMT  
		Size: 807.6 KB (807607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99427cb41f5fa37c249a2b710284a64c874e677c79cd5c985726ddc24f81c02`  
		Last Modified: Fri, 16 Nov 2018 12:02:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ec79e15dbe7a086617b6265099bc0626f1ec9b0394f185ccde20826eca6100`  
		Last Modified: Fri, 16 Nov 2018 12:02:53 GMT  
		Size: 6.4 MB (6403425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db87857d49ffa6f0288be9b4f3c3ea08b6bf224cff9fd588814427dcb2b91e5a`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73335239b6717d7109d8ee51afc1ac53dfa98d7b0da3ffd67648b7e9d8d8f60`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172bd0d0962b63f5cffd983c18c9580be76d03a67f5a5134c3a45fb07a5029b9`  
		Last Modified: Fri, 16 Nov 2018 12:03:12 GMT  
		Size: 52.4 MB (52361894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3567dc6552dcb724990ca5a1abb33078607f1956ac580876aa42234cadbba5d`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9743ccd62a1cdce333c635e00f52cb207816ce31c5ac35e187fa8b40e38d5a65`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:b09115617804ee3c4d8fac76d74f8941b216e3df027918fe051d7780303532b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114629741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eadb1f1a2efc0da98be80ac2fad8972486cb676ffc1db88fa3e0c95dbf8633d`
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
# Fri, 16 Nov 2018 16:34:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:34:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:34:37 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:34:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:34:39 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 16:34:39 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 16:34:40 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:35:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:35:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:35:34 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:35:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:35:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:35:35 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:35:35 GMT
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
	-	`sha256:095d2155c2b33f46f43a2a6be12d98af4a32c89dea0e579818e5fb8f54eb2163`  
		Last Modified: Fri, 16 Nov 2018 16:38:15 GMT  
		Size: 820.0 KB (819950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d89692f6e59b25a5a06342849ad0e64ed4b4e5196ab42ba8c8e6f9bef72fdab`  
		Last Modified: Fri, 16 Nov 2018 16:38:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c73577466e31f18bc75bfce5914c1246bdb6611209a3b9c26143ebaef5baeff`  
		Last Modified: Fri, 16 Nov 2018 16:38:19 GMT  
		Size: 7.5 MB (7451348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a4829d3193b488464fec0d30c9ff3595dc110ce4603da42fc4421e1d6082f0`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d572991d762fa8972de013dd2a23a0f123f367f09b79b2e439619f515cc81d0`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7409be05e17761ef74071c2559c559d15cfc4381be1cd6e6704b0099aafcdec8`  
		Last Modified: Fri, 16 Nov 2018 16:38:44 GMT  
		Size: 62.7 MB (62743884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e8fccda76fc190fb120b309afdc1162abae41cba009cd0d0ddcc367056834e`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cc5dbde30be93265008ed619f5c6180591e234036057c5ffddcc02b0afba02`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:2352f5c901a1180ebbe49b2544267320e375e4bbd3ed650fe983704efe2117ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109322987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d098ff93c6b8718e50bf9a47ae2e4649e13726ab30e2a922fe86f6063e141c`
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
# Fri, 16 Nov 2018 12:55:35 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:55:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:56:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:56:45 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:56:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:56:49 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 12:56:50 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 12:56:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:58:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:58:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:58:40 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:58:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:58:52 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:58:54 GMT
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
	-	`sha256:7a4e68732dc58d640d8924f6c8a68db0b0756194efdc01468204baaf80abc12e`  
		Last Modified: Fri, 16 Nov 2018 13:10:43 GMT  
		Size: 808.8 KB (808844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee2c5c23c9422ac7abf48296fcf97e33f0cd8e5450675ae13dc85deff382af`  
		Last Modified: Fri, 16 Nov 2018 13:10:42 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c64405bc881a6a74ea1ca475878766b6a0925146a4039d4c86b1556cbf54b`  
		Last Modified: Fri, 16 Nov 2018 13:10:48 GMT  
		Size: 7.2 MB (7212092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efcb80766d7720f5aeb0f12cf748e41c3f17a31db134b59c0419d20726100a8`  
		Last Modified: Fri, 16 Nov 2018 13:10:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809aa0c36901e1104ffe9deba062664b4d718c627106d70650754a9c9f5a7e89`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0e0a49f4cc296a9ad9716bc417b29d811c8e4f13f27a63a672999dc4f2d3b4`  
		Last Modified: Fri, 16 Nov 2018 13:11:08 GMT  
		Size: 55.6 MB (55622984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510fd7047c6478c01364a497230bcc211ffdcd0500d23fe75e81ff91ed9835d`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6a4ae748ff7da579d9a44b26dfc5a1b6376daebef41400529d44641a295ff5`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.37`

```console
$ docker pull mariadb@sha256:8e88d4cf0cf4f20a8d03321139a1821cf21752ec793769b9f7acc28c429e0168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.37` - linux; amd64

```console
$ docker pull mariadb@sha256:2107051403260c3cf3fb8ae4696a27e6867f43f09a795e1dc9b41999d1e4d3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116010948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d8750d0dd436d7226a307fa1ea7cce5be8d8ebca5c984ce0fbbd4f7febf7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:29:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:29:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:29:34 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:29:42 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:29:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:29:54 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:29:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:29:56 GMT
ENV MARIADB_MAJOR=10.0
# Mon, 19 Nov 2018 22:29:56 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Mon, 19 Nov 2018 22:29:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:30:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:30:35 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:30:35 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:30:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:30:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:30:37 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:30:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6723b6fbbe9b35a89f740a2577adf4802d5feb0061222346ebb69ea0954da7`  
		Last Modified: Mon, 19 Nov 2018 22:41:17 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793b751dcbdfbe4aea8f29699fc08b32e8d056968ad08e2a1e46e2c7f9fa7088`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9bbda3f54918e8cc3079161404e274050cc04c3d834c7e03cdd0621ca364c2`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 840.8 KB (840766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65515c2213a9223f8392e5a232cc34b458168253d5731206f43f563a344c8669`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898651b716adbb173819e8bef0a939b3c3f108ea5df58ad3f53717643ecdb964`  
		Last Modified: Mon, 19 Nov 2018 22:41:17 GMT  
		Size: 7.3 MB (7325554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922ef3d57d5474129e0ca6069bc31cdc0dca1768c8b7b4ed74c4a5a096ad4717`  
		Last Modified: Mon, 19 Nov 2018 22:41:15 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5fceef23b4673867c0c40c8f2833ec3e94c4d6150b48c059752cb79eae7c8e`  
		Last Modified: Mon, 19 Nov 2018 22:41:15 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752c9487f0edbaf43669fbef6dc50748c669923b3f555303ef9d6edd15800fe8`  
		Last Modified: Mon, 19 Nov 2018 22:41:27 GMT  
		Size: 64.4 MB (64400248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5e4efd35842fed4921cf8d396119a54171e151e0275a9da51d110c39e184e`  
		Last Modified: Mon, 19 Nov 2018 22:41:14 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aaf86e876fc51e4c0de81ca79dda89560d089f8512b5ea56af0bd4de04cc016`  
		Last Modified: Mon, 19 Nov 2018 22:41:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:3fd4159a56fda4c364fcdba03642c8f209329336de0b750832177bf3c6edbfca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99037456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a19ca7ff3172b22effe16504f84d400ce7d882ee3482a28b96f93cd595c0e87`
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
# Fri, 16 Nov 2018 11:48:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:48:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:49:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:49:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:49:52 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 11:49:53 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 11:49:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:52:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:52:25 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:52:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:52:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:52:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:52:33 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:52:35 GMT
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
	-	`sha256:c8ae503ae7ed088fa9706edc35ed6b3ddaa29cb017089d43fd3790dcee52acf1`  
		Last Modified: Fri, 16 Nov 2018 12:02:50 GMT  
		Size: 807.6 KB (807607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99427cb41f5fa37c249a2b710284a64c874e677c79cd5c985726ddc24f81c02`  
		Last Modified: Fri, 16 Nov 2018 12:02:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ec79e15dbe7a086617b6265099bc0626f1ec9b0394f185ccde20826eca6100`  
		Last Modified: Fri, 16 Nov 2018 12:02:53 GMT  
		Size: 6.4 MB (6403425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db87857d49ffa6f0288be9b4f3c3ea08b6bf224cff9fd588814427dcb2b91e5a`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73335239b6717d7109d8ee51afc1ac53dfa98d7b0da3ffd67648b7e9d8d8f60`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172bd0d0962b63f5cffd983c18c9580be76d03a67f5a5134c3a45fb07a5029b9`  
		Last Modified: Fri, 16 Nov 2018 12:03:12 GMT  
		Size: 52.4 MB (52361894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3567dc6552dcb724990ca5a1abb33078607f1956ac580876aa42234cadbba5d`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9743ccd62a1cdce333c635e00f52cb207816ce31c5ac35e187fa8b40e38d5a65`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; 386

```console
$ docker pull mariadb@sha256:b09115617804ee3c4d8fac76d74f8941b216e3df027918fe051d7780303532b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114629741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eadb1f1a2efc0da98be80ac2fad8972486cb676ffc1db88fa3e0c95dbf8633d`
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
# Fri, 16 Nov 2018 16:34:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:34:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:34:37 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:34:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:34:39 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 16:34:39 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 16:34:40 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:35:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:35:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:35:34 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:35:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:35:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:35:35 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:35:35 GMT
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
	-	`sha256:095d2155c2b33f46f43a2a6be12d98af4a32c89dea0e579818e5fb8f54eb2163`  
		Last Modified: Fri, 16 Nov 2018 16:38:15 GMT  
		Size: 820.0 KB (819950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d89692f6e59b25a5a06342849ad0e64ed4b4e5196ab42ba8c8e6f9bef72fdab`  
		Last Modified: Fri, 16 Nov 2018 16:38:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c73577466e31f18bc75bfce5914c1246bdb6611209a3b9c26143ebaef5baeff`  
		Last Modified: Fri, 16 Nov 2018 16:38:19 GMT  
		Size: 7.5 MB (7451348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a4829d3193b488464fec0d30c9ff3595dc110ce4603da42fc4421e1d6082f0`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d572991d762fa8972de013dd2a23a0f123f367f09b79b2e439619f515cc81d0`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7409be05e17761ef74071c2559c559d15cfc4381be1cd6e6704b0099aafcdec8`  
		Last Modified: Fri, 16 Nov 2018 16:38:44 GMT  
		Size: 62.7 MB (62743884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e8fccda76fc190fb120b309afdc1162abae41cba009cd0d0ddcc367056834e`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cc5dbde30be93265008ed619f5c6180591e234036057c5ffddcc02b0afba02`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37` - linux; ppc64le

```console
$ docker pull mariadb@sha256:2352f5c901a1180ebbe49b2544267320e375e4bbd3ed650fe983704efe2117ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109322987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d098ff93c6b8718e50bf9a47ae2e4649e13726ab30e2a922fe86f6063e141c`
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
# Fri, 16 Nov 2018 12:55:35 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:55:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:56:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:56:45 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:56:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:56:49 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 12:56:50 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 12:56:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:58:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:58:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:58:40 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:58:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:58:52 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:58:54 GMT
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
	-	`sha256:7a4e68732dc58d640d8924f6c8a68db0b0756194efdc01468204baaf80abc12e`  
		Last Modified: Fri, 16 Nov 2018 13:10:43 GMT  
		Size: 808.8 KB (808844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee2c5c23c9422ac7abf48296fcf97e33f0cd8e5450675ae13dc85deff382af`  
		Last Modified: Fri, 16 Nov 2018 13:10:42 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c64405bc881a6a74ea1ca475878766b6a0925146a4039d4c86b1556cbf54b`  
		Last Modified: Fri, 16 Nov 2018 13:10:48 GMT  
		Size: 7.2 MB (7212092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efcb80766d7720f5aeb0f12cf748e41c3f17a31db134b59c0419d20726100a8`  
		Last Modified: Fri, 16 Nov 2018 13:10:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809aa0c36901e1104ffe9deba062664b4d718c627106d70650754a9c9f5a7e89`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0e0a49f4cc296a9ad9716bc417b29d811c8e4f13f27a63a672999dc4f2d3b4`  
		Last Modified: Fri, 16 Nov 2018 13:11:08 GMT  
		Size: 55.6 MB (55622984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510fd7047c6478c01364a497230bcc211ffdcd0500d23fe75e81ff91ed9835d`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6a4ae748ff7da579d9a44b26dfc5a1b6376daebef41400529d44641a295ff5`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.37-xenial`

```console
$ docker pull mariadb@sha256:8e88d4cf0cf4f20a8d03321139a1821cf21752ec793769b9f7acc28c429e0168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.37-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:2107051403260c3cf3fb8ae4696a27e6867f43f09a795e1dc9b41999d1e4d3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116010948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d8750d0dd436d7226a307fa1ea7cce5be8d8ebca5c984ce0fbbd4f7febf7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:29:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:29:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:29:34 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:29:42 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:29:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:29:54 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:29:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:29:56 GMT
ENV MARIADB_MAJOR=10.0
# Mon, 19 Nov 2018 22:29:56 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Mon, 19 Nov 2018 22:29:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:30:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:30:35 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:30:35 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:30:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:30:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:30:37 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:30:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6723b6fbbe9b35a89f740a2577adf4802d5feb0061222346ebb69ea0954da7`  
		Last Modified: Mon, 19 Nov 2018 22:41:17 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793b751dcbdfbe4aea8f29699fc08b32e8d056968ad08e2a1e46e2c7f9fa7088`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9bbda3f54918e8cc3079161404e274050cc04c3d834c7e03cdd0621ca364c2`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 840.8 KB (840766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65515c2213a9223f8392e5a232cc34b458168253d5731206f43f563a344c8669`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898651b716adbb173819e8bef0a939b3c3f108ea5df58ad3f53717643ecdb964`  
		Last Modified: Mon, 19 Nov 2018 22:41:17 GMT  
		Size: 7.3 MB (7325554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922ef3d57d5474129e0ca6069bc31cdc0dca1768c8b7b4ed74c4a5a096ad4717`  
		Last Modified: Mon, 19 Nov 2018 22:41:15 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5fceef23b4673867c0c40c8f2833ec3e94c4d6150b48c059752cb79eae7c8e`  
		Last Modified: Mon, 19 Nov 2018 22:41:15 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752c9487f0edbaf43669fbef6dc50748c669923b3f555303ef9d6edd15800fe8`  
		Last Modified: Mon, 19 Nov 2018 22:41:27 GMT  
		Size: 64.4 MB (64400248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5e4efd35842fed4921cf8d396119a54171e151e0275a9da51d110c39e184e`  
		Last Modified: Mon, 19 Nov 2018 22:41:14 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aaf86e876fc51e4c0de81ca79dda89560d089f8512b5ea56af0bd4de04cc016`  
		Last Modified: Mon, 19 Nov 2018 22:41:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:3fd4159a56fda4c364fcdba03642c8f209329336de0b750832177bf3c6edbfca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99037456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a19ca7ff3172b22effe16504f84d400ce7d882ee3482a28b96f93cd595c0e87`
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
# Fri, 16 Nov 2018 11:48:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:48:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:49:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:49:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:49:52 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 11:49:53 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 11:49:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:52:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:52:25 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:52:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:52:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:52:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:52:33 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:52:35 GMT
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
	-	`sha256:c8ae503ae7ed088fa9706edc35ed6b3ddaa29cb017089d43fd3790dcee52acf1`  
		Last Modified: Fri, 16 Nov 2018 12:02:50 GMT  
		Size: 807.6 KB (807607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99427cb41f5fa37c249a2b710284a64c874e677c79cd5c985726ddc24f81c02`  
		Last Modified: Fri, 16 Nov 2018 12:02:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ec79e15dbe7a086617b6265099bc0626f1ec9b0394f185ccde20826eca6100`  
		Last Modified: Fri, 16 Nov 2018 12:02:53 GMT  
		Size: 6.4 MB (6403425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db87857d49ffa6f0288be9b4f3c3ea08b6bf224cff9fd588814427dcb2b91e5a`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73335239b6717d7109d8ee51afc1ac53dfa98d7b0da3ffd67648b7e9d8d8f60`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172bd0d0962b63f5cffd983c18c9580be76d03a67f5a5134c3a45fb07a5029b9`  
		Last Modified: Fri, 16 Nov 2018 12:03:12 GMT  
		Size: 52.4 MB (52361894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3567dc6552dcb724990ca5a1abb33078607f1956ac580876aa42234cadbba5d`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9743ccd62a1cdce333c635e00f52cb207816ce31c5ac35e187fa8b40e38d5a65`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:b09115617804ee3c4d8fac76d74f8941b216e3df027918fe051d7780303532b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114629741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eadb1f1a2efc0da98be80ac2fad8972486cb676ffc1db88fa3e0c95dbf8633d`
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
# Fri, 16 Nov 2018 16:34:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:34:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:34:37 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:34:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:34:39 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 16:34:39 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 16:34:40 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:35:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:35:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:35:34 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:35:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:35:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:35:35 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:35:35 GMT
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
	-	`sha256:095d2155c2b33f46f43a2a6be12d98af4a32c89dea0e579818e5fb8f54eb2163`  
		Last Modified: Fri, 16 Nov 2018 16:38:15 GMT  
		Size: 820.0 KB (819950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d89692f6e59b25a5a06342849ad0e64ed4b4e5196ab42ba8c8e6f9bef72fdab`  
		Last Modified: Fri, 16 Nov 2018 16:38:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c73577466e31f18bc75bfce5914c1246bdb6611209a3b9c26143ebaef5baeff`  
		Last Modified: Fri, 16 Nov 2018 16:38:19 GMT  
		Size: 7.5 MB (7451348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a4829d3193b488464fec0d30c9ff3595dc110ce4603da42fc4421e1d6082f0`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d572991d762fa8972de013dd2a23a0f123f367f09b79b2e439619f515cc81d0`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7409be05e17761ef74071c2559c559d15cfc4381be1cd6e6704b0099aafcdec8`  
		Last Modified: Fri, 16 Nov 2018 16:38:44 GMT  
		Size: 62.7 MB (62743884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e8fccda76fc190fb120b309afdc1162abae41cba009cd0d0ddcc367056834e`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cc5dbde30be93265008ed619f5c6180591e234036057c5ffddcc02b0afba02`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.37-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:2352f5c901a1180ebbe49b2544267320e375e4bbd3ed650fe983704efe2117ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109322987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d098ff93c6b8718e50bf9a47ae2e4649e13726ab30e2a922fe86f6063e141c`
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
# Fri, 16 Nov 2018 12:55:35 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:55:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:56:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:56:45 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:56:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:56:49 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 12:56:50 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 12:56:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:58:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:58:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:58:40 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:58:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:58:52 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:58:54 GMT
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
	-	`sha256:7a4e68732dc58d640d8924f6c8a68db0b0756194efdc01468204baaf80abc12e`  
		Last Modified: Fri, 16 Nov 2018 13:10:43 GMT  
		Size: 808.8 KB (808844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee2c5c23c9422ac7abf48296fcf97e33f0cd8e5450675ae13dc85deff382af`  
		Last Modified: Fri, 16 Nov 2018 13:10:42 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c64405bc881a6a74ea1ca475878766b6a0925146a4039d4c86b1556cbf54b`  
		Last Modified: Fri, 16 Nov 2018 13:10:48 GMT  
		Size: 7.2 MB (7212092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efcb80766d7720f5aeb0f12cf748e41c3f17a31db134b59c0419d20726100a8`  
		Last Modified: Fri, 16 Nov 2018 13:10:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809aa0c36901e1104ffe9deba062664b4d718c627106d70650754a9c9f5a7e89`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0e0a49f4cc296a9ad9716bc417b29d811c8e4f13f27a63a672999dc4f2d3b4`  
		Last Modified: Fri, 16 Nov 2018 13:11:08 GMT  
		Size: 55.6 MB (55622984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510fd7047c6478c01364a497230bcc211ffdcd0500d23fe75e81ff91ed9835d`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6a4ae748ff7da579d9a44b26dfc5a1b6376daebef41400529d44641a295ff5`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:8e88d4cf0cf4f20a8d03321139a1821cf21752ec793769b9f7acc28c429e0168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:2107051403260c3cf3fb8ae4696a27e6867f43f09a795e1dc9b41999d1e4d3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116010948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d8750d0dd436d7226a307fa1ea7cce5be8d8ebca5c984ce0fbbd4f7febf7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:29:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:29:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:29:34 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:29:42 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:29:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:29:54 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:29:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:29:56 GMT
ENV MARIADB_MAJOR=10.0
# Mon, 19 Nov 2018 22:29:56 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Mon, 19 Nov 2018 22:29:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:30:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:30:35 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:30:35 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:30:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:30:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:30:37 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:30:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6723b6fbbe9b35a89f740a2577adf4802d5feb0061222346ebb69ea0954da7`  
		Last Modified: Mon, 19 Nov 2018 22:41:17 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793b751dcbdfbe4aea8f29699fc08b32e8d056968ad08e2a1e46e2c7f9fa7088`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9bbda3f54918e8cc3079161404e274050cc04c3d834c7e03cdd0621ca364c2`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 840.8 KB (840766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65515c2213a9223f8392e5a232cc34b458168253d5731206f43f563a344c8669`  
		Last Modified: Mon, 19 Nov 2018 22:41:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898651b716adbb173819e8bef0a939b3c3f108ea5df58ad3f53717643ecdb964`  
		Last Modified: Mon, 19 Nov 2018 22:41:17 GMT  
		Size: 7.3 MB (7325554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922ef3d57d5474129e0ca6069bc31cdc0dca1768c8b7b4ed74c4a5a096ad4717`  
		Last Modified: Mon, 19 Nov 2018 22:41:15 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5fceef23b4673867c0c40c8f2833ec3e94c4d6150b48c059752cb79eae7c8e`  
		Last Modified: Mon, 19 Nov 2018 22:41:15 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752c9487f0edbaf43669fbef6dc50748c669923b3f555303ef9d6edd15800fe8`  
		Last Modified: Mon, 19 Nov 2018 22:41:27 GMT  
		Size: 64.4 MB (64400248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5e4efd35842fed4921cf8d396119a54171e151e0275a9da51d110c39e184e`  
		Last Modified: Mon, 19 Nov 2018 22:41:14 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aaf86e876fc51e4c0de81ca79dda89560d089f8512b5ea56af0bd4de04cc016`  
		Last Modified: Mon, 19 Nov 2018 22:41:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:3fd4159a56fda4c364fcdba03642c8f209329336de0b750832177bf3c6edbfca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99037456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a19ca7ff3172b22effe16504f84d400ce7d882ee3482a28b96f93cd595c0e87`
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
# Fri, 16 Nov 2018 11:48:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:48:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:49:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:49:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:49:52 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 11:49:53 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 11:49:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:52:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:52:25 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:52:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:52:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:52:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:52:33 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:52:35 GMT
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
	-	`sha256:c8ae503ae7ed088fa9706edc35ed6b3ddaa29cb017089d43fd3790dcee52acf1`  
		Last Modified: Fri, 16 Nov 2018 12:02:50 GMT  
		Size: 807.6 KB (807607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99427cb41f5fa37c249a2b710284a64c874e677c79cd5c985726ddc24f81c02`  
		Last Modified: Fri, 16 Nov 2018 12:02:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ec79e15dbe7a086617b6265099bc0626f1ec9b0394f185ccde20826eca6100`  
		Last Modified: Fri, 16 Nov 2018 12:02:53 GMT  
		Size: 6.4 MB (6403425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db87857d49ffa6f0288be9b4f3c3ea08b6bf224cff9fd588814427dcb2b91e5a`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73335239b6717d7109d8ee51afc1ac53dfa98d7b0da3ffd67648b7e9d8d8f60`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172bd0d0962b63f5cffd983c18c9580be76d03a67f5a5134c3a45fb07a5029b9`  
		Last Modified: Fri, 16 Nov 2018 12:03:12 GMT  
		Size: 52.4 MB (52361894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3567dc6552dcb724990ca5a1abb33078607f1956ac580876aa42234cadbba5d`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9743ccd62a1cdce333c635e00f52cb207816ce31c5ac35e187fa8b40e38d5a65`  
		Last Modified: Fri, 16 Nov 2018 12:02:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:b09115617804ee3c4d8fac76d74f8941b216e3df027918fe051d7780303532b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114629741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eadb1f1a2efc0da98be80ac2fad8972486cb676ffc1db88fa3e0c95dbf8633d`
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
# Fri, 16 Nov 2018 16:34:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:34:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:34:37 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:34:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:34:39 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 16:34:39 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 16:34:40 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:35:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:35:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:35:34 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:35:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:35:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:35:35 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:35:35 GMT
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
	-	`sha256:095d2155c2b33f46f43a2a6be12d98af4a32c89dea0e579818e5fb8f54eb2163`  
		Last Modified: Fri, 16 Nov 2018 16:38:15 GMT  
		Size: 820.0 KB (819950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d89692f6e59b25a5a06342849ad0e64ed4b4e5196ab42ba8c8e6f9bef72fdab`  
		Last Modified: Fri, 16 Nov 2018 16:38:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c73577466e31f18bc75bfce5914c1246bdb6611209a3b9c26143ebaef5baeff`  
		Last Modified: Fri, 16 Nov 2018 16:38:19 GMT  
		Size: 7.5 MB (7451348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a4829d3193b488464fec0d30c9ff3595dc110ce4603da42fc4421e1d6082f0`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d572991d762fa8972de013dd2a23a0f123f367f09b79b2e439619f515cc81d0`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7409be05e17761ef74071c2559c559d15cfc4381be1cd6e6704b0099aafcdec8`  
		Last Modified: Fri, 16 Nov 2018 16:38:44 GMT  
		Size: 62.7 MB (62743884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e8fccda76fc190fb120b309afdc1162abae41cba009cd0d0ddcc367056834e`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cc5dbde30be93265008ed619f5c6180591e234036057c5ffddcc02b0afba02`  
		Last Modified: Fri, 16 Nov 2018 16:38:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:2352f5c901a1180ebbe49b2544267320e375e4bbd3ed650fe983704efe2117ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109322987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d098ff93c6b8718e50bf9a47ae2e4649e13726ab30e2a922fe86f6063e141c`
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
# Fri, 16 Nov 2018 12:55:35 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:55:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:56:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:56:45 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:56:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:56:49 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 16 Nov 2018 12:56:50 GMT
ENV MARIADB_VERSION=10.0.37+maria-1~xenial
# Fri, 16 Nov 2018 12:56:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:58:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:58:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:58:40 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:58:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:58:52 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:58:54 GMT
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
	-	`sha256:7a4e68732dc58d640d8924f6c8a68db0b0756194efdc01468204baaf80abc12e`  
		Last Modified: Fri, 16 Nov 2018 13:10:43 GMT  
		Size: 808.8 KB (808844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee2c5c23c9422ac7abf48296fcf97e33f0cd8e5450675ae13dc85deff382af`  
		Last Modified: Fri, 16 Nov 2018 13:10:42 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c64405bc881a6a74ea1ca475878766b6a0925146a4039d4c86b1556cbf54b`  
		Last Modified: Fri, 16 Nov 2018 13:10:48 GMT  
		Size: 7.2 MB (7212092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efcb80766d7720f5aeb0f12cf748e41c3f17a31db134b59c0419d20726100a8`  
		Last Modified: Fri, 16 Nov 2018 13:10:40 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809aa0c36901e1104ffe9deba062664b4d718c627106d70650754a9c9f5a7e89`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0e0a49f4cc296a9ad9716bc417b29d811c8e4f13f27a63a672999dc4f2d3b4`  
		Last Modified: Fri, 16 Nov 2018 13:11:08 GMT  
		Size: 55.6 MB (55622984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510fd7047c6478c01364a497230bcc211ffdcd0500d23fe75e81ff91ed9835d`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6a4ae748ff7da579d9a44b26dfc5a1b6376daebef41400529d44641a295ff5`  
		Last Modified: Fri, 16 Nov 2018 13:10:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:d2390e17dfa08ca2c25acd3130d55668f37ece9818e210d5ed23a261bb6f0c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:39ac6980a13bfaf2925c76e9c0701b0d5815c5adda0554cd969a1b8e2d78fe1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118488693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22125c7e6e4e318adb603ebf18b0aae7e69027965cd64d5e66a7be54063ed6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:28:19 GMT
ENV MARIADB_MAJOR=10.1
# Mon, 19 Nov 2018 22:28:19 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Mon, 19 Nov 2018 22:28:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:28:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:28:53 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:28:53 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:28:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:28:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:28:54 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:28:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fe0e5d7447aee30eb76976df2780eee671cb828f169a4bf547f472050218a6`  
		Last Modified: Mon, 19 Nov 2018 22:39:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a10f90d6426ce6e222ac67616594ce0ae57bd52df30fed9767c607a5ff1879`  
		Last Modified: Mon, 19 Nov 2018 22:39:50 GMT  
		Size: 77.7 MB (77730818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a25cfb9eb65878c9549b2e2b0ec68a429c43e24058da4262de9e9809bdb9`  
		Last Modified: Mon, 19 Nov 2018 22:39:32 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5213a156d1f97e1b1f1d2d8f8bcf1bd288b4ea5854ebb462d45a58c4d3067f2b`  
		Last Modified: Mon, 19 Nov 2018 22:39:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:d4de1ad04327fe652332abb6dd5def56764045b7b96d7baad9d60103e3b98eac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110869707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff835e8a25e1ea33175333f904dc8230f91a803a68c6ad9d876d4d0c7d39b4d3`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:45:07 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 16 Nov 2018 11:45:08 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Fri, 16 Nov 2018 11:45:13 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:47:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:47:35 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:47:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:47:41 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:47:42 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c624051ca8eb2d0c635774ea62fbe6ed00945777ee672f035f543b95b6e3f7`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf687ec1e8819e715a1bbb3b879332f6127ba1feed13d186ed3fe6a006c05b3`  
		Last Modified: Fri, 16 Nov 2018 12:01:33 GMT  
		Size: 74.1 MB (74096130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b7ecd1114bf4240aa83be8b42cb50b54d3d71444c3a93bbac068fa5e7337b3`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4bcd7b5d262590b563c957abd7489522ada99c9ee970a340acc8248ef373a`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4b3f104d92a0529eec92a5caffcddbb2bdfbd30fc58f1d6490ecd5cdbf8f716d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123068962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817ae223a02a2aaeb5be8598dc602abcf2090c4d81808a4872845e829909c2dd`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:52:24 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 16 Nov 2018 12:52:26 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Fri, 16 Nov 2018 12:52:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:54:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:54:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:54:17 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:54:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:54:23 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:54:24 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5fd43befb5d6ed3b5f39ae438199ed0d0487d925fd4e75c52a8118980fddf2`  
		Last Modified: Fri, 16 Nov 2018 13:09:13 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843ef8f84334c1d30b9350ecfec96cfcdb836007c779628cb3b9cb4a60cfed27`  
		Last Modified: Fri, 16 Nov 2018 13:09:44 GMT  
		Size: 78.3 MB (78290953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61a41cf76f0965f51b0d287243728f0883077526206f0da95e9ab68d88a6418`  
		Last Modified: Fri, 16 Nov 2018 13:09:13 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7114f731e1bc977f0c04888fdf201c639166481a76e7855d07d1e7c7a7121b8`  
		Last Modified: Fri, 16 Nov 2018 13:09:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.37`

```console
$ docker pull mariadb@sha256:d2390e17dfa08ca2c25acd3130d55668f37ece9818e210d5ed23a261bb6f0c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.37` - linux; amd64

```console
$ docker pull mariadb@sha256:39ac6980a13bfaf2925c76e9c0701b0d5815c5adda0554cd969a1b8e2d78fe1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118488693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22125c7e6e4e318adb603ebf18b0aae7e69027965cd64d5e66a7be54063ed6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:28:19 GMT
ENV MARIADB_MAJOR=10.1
# Mon, 19 Nov 2018 22:28:19 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Mon, 19 Nov 2018 22:28:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:28:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:28:53 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:28:53 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:28:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:28:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:28:54 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:28:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fe0e5d7447aee30eb76976df2780eee671cb828f169a4bf547f472050218a6`  
		Last Modified: Mon, 19 Nov 2018 22:39:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a10f90d6426ce6e222ac67616594ce0ae57bd52df30fed9767c607a5ff1879`  
		Last Modified: Mon, 19 Nov 2018 22:39:50 GMT  
		Size: 77.7 MB (77730818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a25cfb9eb65878c9549b2e2b0ec68a429c43e24058da4262de9e9809bdb9`  
		Last Modified: Mon, 19 Nov 2018 22:39:32 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5213a156d1f97e1b1f1d2d8f8bcf1bd288b4ea5854ebb462d45a58c4d3067f2b`  
		Last Modified: Mon, 19 Nov 2018 22:39:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:d4de1ad04327fe652332abb6dd5def56764045b7b96d7baad9d60103e3b98eac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110869707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff835e8a25e1ea33175333f904dc8230f91a803a68c6ad9d876d4d0c7d39b4d3`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:45:07 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 16 Nov 2018 11:45:08 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Fri, 16 Nov 2018 11:45:13 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:47:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:47:35 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:47:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:47:41 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:47:42 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c624051ca8eb2d0c635774ea62fbe6ed00945777ee672f035f543b95b6e3f7`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf687ec1e8819e715a1bbb3b879332f6127ba1feed13d186ed3fe6a006c05b3`  
		Last Modified: Fri, 16 Nov 2018 12:01:33 GMT  
		Size: 74.1 MB (74096130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b7ecd1114bf4240aa83be8b42cb50b54d3d71444c3a93bbac068fa5e7337b3`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4bcd7b5d262590b563c957abd7489522ada99c9ee970a340acc8248ef373a`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4b3f104d92a0529eec92a5caffcddbb2bdfbd30fc58f1d6490ecd5cdbf8f716d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123068962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817ae223a02a2aaeb5be8598dc602abcf2090c4d81808a4872845e829909c2dd`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:52:24 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 16 Nov 2018 12:52:26 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Fri, 16 Nov 2018 12:52:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:54:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:54:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:54:17 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:54:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:54:23 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:54:24 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5fd43befb5d6ed3b5f39ae438199ed0d0487d925fd4e75c52a8118980fddf2`  
		Last Modified: Fri, 16 Nov 2018 13:09:13 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843ef8f84334c1d30b9350ecfec96cfcdb836007c779628cb3b9cb4a60cfed27`  
		Last Modified: Fri, 16 Nov 2018 13:09:44 GMT  
		Size: 78.3 MB (78290953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61a41cf76f0965f51b0d287243728f0883077526206f0da95e9ab68d88a6418`  
		Last Modified: Fri, 16 Nov 2018 13:09:13 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7114f731e1bc977f0c04888fdf201c639166481a76e7855d07d1e7c7a7121b8`  
		Last Modified: Fri, 16 Nov 2018 13:09:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.37-bionic`

```console
$ docker pull mariadb@sha256:d2390e17dfa08ca2c25acd3130d55668f37ece9818e210d5ed23a261bb6f0c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.37-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:39ac6980a13bfaf2925c76e9c0701b0d5815c5adda0554cd969a1b8e2d78fe1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118488693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22125c7e6e4e318adb603ebf18b0aae7e69027965cd64d5e66a7be54063ed6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:28:19 GMT
ENV MARIADB_MAJOR=10.1
# Mon, 19 Nov 2018 22:28:19 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Mon, 19 Nov 2018 22:28:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:28:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:28:53 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:28:53 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:28:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:28:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:28:54 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:28:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fe0e5d7447aee30eb76976df2780eee671cb828f169a4bf547f472050218a6`  
		Last Modified: Mon, 19 Nov 2018 22:39:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a10f90d6426ce6e222ac67616594ce0ae57bd52df30fed9767c607a5ff1879`  
		Last Modified: Mon, 19 Nov 2018 22:39:50 GMT  
		Size: 77.7 MB (77730818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a25cfb9eb65878c9549b2e2b0ec68a429c43e24058da4262de9e9809bdb9`  
		Last Modified: Mon, 19 Nov 2018 22:39:32 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5213a156d1f97e1b1f1d2d8f8bcf1bd288b4ea5854ebb462d45a58c4d3067f2b`  
		Last Modified: Mon, 19 Nov 2018 22:39:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:d4de1ad04327fe652332abb6dd5def56764045b7b96d7baad9d60103e3b98eac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110869707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff835e8a25e1ea33175333f904dc8230f91a803a68c6ad9d876d4d0c7d39b4d3`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:45:07 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 16 Nov 2018 11:45:08 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Fri, 16 Nov 2018 11:45:13 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:47:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:47:35 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:47:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:47:41 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:47:42 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c624051ca8eb2d0c635774ea62fbe6ed00945777ee672f035f543b95b6e3f7`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf687ec1e8819e715a1bbb3b879332f6127ba1feed13d186ed3fe6a006c05b3`  
		Last Modified: Fri, 16 Nov 2018 12:01:33 GMT  
		Size: 74.1 MB (74096130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b7ecd1114bf4240aa83be8b42cb50b54d3d71444c3a93bbac068fa5e7337b3`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4bcd7b5d262590b563c957abd7489522ada99c9ee970a340acc8248ef373a`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.37-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4b3f104d92a0529eec92a5caffcddbb2bdfbd30fc58f1d6490ecd5cdbf8f716d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123068962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817ae223a02a2aaeb5be8598dc602abcf2090c4d81808a4872845e829909c2dd`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:52:24 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 16 Nov 2018 12:52:26 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Fri, 16 Nov 2018 12:52:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:54:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:54:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:54:17 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:54:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:54:23 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:54:24 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5fd43befb5d6ed3b5f39ae438199ed0d0487d925fd4e75c52a8118980fddf2`  
		Last Modified: Fri, 16 Nov 2018 13:09:13 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843ef8f84334c1d30b9350ecfec96cfcdb836007c779628cb3b9cb4a60cfed27`  
		Last Modified: Fri, 16 Nov 2018 13:09:44 GMT  
		Size: 78.3 MB (78290953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61a41cf76f0965f51b0d287243728f0883077526206f0da95e9ab68d88a6418`  
		Last Modified: Fri, 16 Nov 2018 13:09:13 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7114f731e1bc977f0c04888fdf201c639166481a76e7855d07d1e7c7a7121b8`  
		Last Modified: Fri, 16 Nov 2018 13:09:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:d2390e17dfa08ca2c25acd3130d55668f37ece9818e210d5ed23a261bb6f0c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:39ac6980a13bfaf2925c76e9c0701b0d5815c5adda0554cd969a1b8e2d78fe1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118488693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca22125c7e6e4e318adb603ebf18b0aae7e69027965cd64d5e66a7be54063ed6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:28:19 GMT
ENV MARIADB_MAJOR=10.1
# Mon, 19 Nov 2018 22:28:19 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Mon, 19 Nov 2018 22:28:20 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:28:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:28:53 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:28:53 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:28:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:28:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:28:54 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:28:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fe0e5d7447aee30eb76976df2780eee671cb828f169a4bf547f472050218a6`  
		Last Modified: Mon, 19 Nov 2018 22:39:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a10f90d6426ce6e222ac67616594ce0ae57bd52df30fed9767c607a5ff1879`  
		Last Modified: Mon, 19 Nov 2018 22:39:50 GMT  
		Size: 77.7 MB (77730818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a25cfb9eb65878c9549b2e2b0ec68a429c43e24058da4262de9e9809bdb9`  
		Last Modified: Mon, 19 Nov 2018 22:39:32 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5213a156d1f97e1b1f1d2d8f8bcf1bd288b4ea5854ebb462d45a58c4d3067f2b`  
		Last Modified: Mon, 19 Nov 2018 22:39:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:d4de1ad04327fe652332abb6dd5def56764045b7b96d7baad9d60103e3b98eac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110869707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff835e8a25e1ea33175333f904dc8230f91a803a68c6ad9d876d4d0c7d39b4d3`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:45:07 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 16 Nov 2018 11:45:08 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Fri, 16 Nov 2018 11:45:13 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:47:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:47:35 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:47:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:47:41 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:47:42 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c624051ca8eb2d0c635774ea62fbe6ed00945777ee672f035f543b95b6e3f7`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf687ec1e8819e715a1bbb3b879332f6127ba1feed13d186ed3fe6a006c05b3`  
		Last Modified: Fri, 16 Nov 2018 12:01:33 GMT  
		Size: 74.1 MB (74096130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b7ecd1114bf4240aa83be8b42cb50b54d3d71444c3a93bbac068fa5e7337b3`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4bcd7b5d262590b563c957abd7489522ada99c9ee970a340acc8248ef373a`  
		Last Modified: Fri, 16 Nov 2018 12:00:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4b3f104d92a0529eec92a5caffcddbb2bdfbd30fc58f1d6490ecd5cdbf8f716d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123068962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817ae223a02a2aaeb5be8598dc602abcf2090c4d81808a4872845e829909c2dd`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:52:24 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 16 Nov 2018 12:52:26 GMT
ENV MARIADB_VERSION=1:10.1.37+maria-1~bionic
# Fri, 16 Nov 2018 12:52:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:54:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:54:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:54:17 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:54:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:54:23 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:54:24 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5fd43befb5d6ed3b5f39ae438199ed0d0487d925fd4e75c52a8118980fddf2`  
		Last Modified: Fri, 16 Nov 2018 13:09:13 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843ef8f84334c1d30b9350ecfec96cfcdb836007c779628cb3b9cb4a60cfed27`  
		Last Modified: Fri, 16 Nov 2018 13:09:44 GMT  
		Size: 78.3 MB (78290953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61a41cf76f0965f51b0d287243728f0883077526206f0da95e9ab68d88a6418`  
		Last Modified: Fri, 16 Nov 2018 13:09:13 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7114f731e1bc977f0c04888fdf201c639166481a76e7855d07d1e7c7a7121b8`  
		Last Modified: Fri, 16 Nov 2018 13:09:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:ea4401df723b580e142e0279eaef860487638560030bd8096b1acce7e4008461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:52b57a830c2df5b0c458cc9437276bb3bc68815440b87e01f0074f77bd5f3300
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114067383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e11814388aead0ec85dfa86f2373d716893d8e5395866d4a3b80c77caf8749`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:27:11 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 19 Nov 2018 22:27:12 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Mon, 19 Nov 2018 22:27:12 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:27:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:27:48 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:27:49 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:27:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:27:50 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:27:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f465d78b4731fb76c3705184e738b7c14f2b0f3dd31a4921e7d6fc3717a629`  
		Last Modified: Mon, 19 Nov 2018 22:37:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d4551c84ff9e3a0dc8c870f3a62f18075934a68117d0fda72beba53b621fda`  
		Last Modified: Mon, 19 Nov 2018 22:38:00 GMT  
		Size: 73.3 MB (73309509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5b460a14331db1329418bda124f413426f3538a5536ab60fd295634ea4ad6`  
		Last Modified: Mon, 19 Nov 2018 22:37:44 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b547008ac8d17f2df17e54646778f2bd438c6863c727850ba8f3ac63f5cd702`  
		Last Modified: Mon, 19 Nov 2018 22:37:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:62161b6d297150618f261a133059a1fb7e59ec2598c7da3abf6ef060f72599e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (109010666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d0caebc6669c4a2a593aafbf0e5a5d6dcdce906a6dc1334f594c8aca148484`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:42:51 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 11:42:52 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 11:43:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:44:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:44:32 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:44:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:44:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:44:37 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:44:38 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98bc5e2c7acaf0c11ec7e5a7272869bd8aca1cba0aa50a1697c022653713dae`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc259b62d1e0bbccc8e9aa6ac9048de1ec69fc7e85fb9e8ccbaf5b09653bb6e`  
		Last Modified: Fri, 16 Nov 2018 11:59:37 GMT  
		Size: 72.2 MB (72237088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df4657eb5acaf5a9e288e83acf9143590a997fd85d464fcf2a7bd1c6514faf6`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41569780eafc04716f7870ae432e82439f23deb3b368177322c9e34b3bcdf59`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bf572451e13925f6efc48b2bd68adc3bd93c151e6e0172d0b5993a9859b69d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120940802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1439ee061d73517b92e0d8ab41301084ee9eb059069d1c84376a7473b70c3895`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:50:19 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 12:50:20 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 12:50:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:51:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:51:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:51:55 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:51:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:51:59 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:52:00 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5babdd314a378179a1ce5c32469d41c1b2d72630e5f4e347821e1493b167c7`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c713b50c8fe251d805944f1f486fc2f946545c730d6af0f2b0aeefe2a7d84b47`  
		Last Modified: Fri, 16 Nov 2018 13:08:16 GMT  
		Size: 76.2 MB (76162796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468a08adac5be5039ba4b23d03d68b13789275c8fc219061bbeb176939358bc0`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68936f014a54163da257a7b20d638ab4db92b36b80c3c802696c369c64b7c226`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.19`

```console
$ docker pull mariadb@sha256:ea4401df723b580e142e0279eaef860487638560030bd8096b1acce7e4008461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.19` - linux; amd64

```console
$ docker pull mariadb@sha256:52b57a830c2df5b0c458cc9437276bb3bc68815440b87e01f0074f77bd5f3300
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114067383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e11814388aead0ec85dfa86f2373d716893d8e5395866d4a3b80c77caf8749`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:27:11 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 19 Nov 2018 22:27:12 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Mon, 19 Nov 2018 22:27:12 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:27:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:27:48 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:27:49 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:27:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:27:50 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:27:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f465d78b4731fb76c3705184e738b7c14f2b0f3dd31a4921e7d6fc3717a629`  
		Last Modified: Mon, 19 Nov 2018 22:37:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d4551c84ff9e3a0dc8c870f3a62f18075934a68117d0fda72beba53b621fda`  
		Last Modified: Mon, 19 Nov 2018 22:38:00 GMT  
		Size: 73.3 MB (73309509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5b460a14331db1329418bda124f413426f3538a5536ab60fd295634ea4ad6`  
		Last Modified: Mon, 19 Nov 2018 22:37:44 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b547008ac8d17f2df17e54646778f2bd438c6863c727850ba8f3ac63f5cd702`  
		Last Modified: Mon, 19 Nov 2018 22:37:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.19` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:62161b6d297150618f261a133059a1fb7e59ec2598c7da3abf6ef060f72599e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (109010666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d0caebc6669c4a2a593aafbf0e5a5d6dcdce906a6dc1334f594c8aca148484`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:42:51 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 11:42:52 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 11:43:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:44:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:44:32 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:44:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:44:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:44:37 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:44:38 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98bc5e2c7acaf0c11ec7e5a7272869bd8aca1cba0aa50a1697c022653713dae`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc259b62d1e0bbccc8e9aa6ac9048de1ec69fc7e85fb9e8ccbaf5b09653bb6e`  
		Last Modified: Fri, 16 Nov 2018 11:59:37 GMT  
		Size: 72.2 MB (72237088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df4657eb5acaf5a9e288e83acf9143590a997fd85d464fcf2a7bd1c6514faf6`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41569780eafc04716f7870ae432e82439f23deb3b368177322c9e34b3bcdf59`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.19` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bf572451e13925f6efc48b2bd68adc3bd93c151e6e0172d0b5993a9859b69d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120940802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1439ee061d73517b92e0d8ab41301084ee9eb059069d1c84376a7473b70c3895`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:50:19 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 12:50:20 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 12:50:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:51:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:51:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:51:55 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:51:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:51:59 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:52:00 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5babdd314a378179a1ce5c32469d41c1b2d72630e5f4e347821e1493b167c7`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c713b50c8fe251d805944f1f486fc2f946545c730d6af0f2b0aeefe2a7d84b47`  
		Last Modified: Fri, 16 Nov 2018 13:08:16 GMT  
		Size: 76.2 MB (76162796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468a08adac5be5039ba4b23d03d68b13789275c8fc219061bbeb176939358bc0`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68936f014a54163da257a7b20d638ab4db92b36b80c3c802696c369c64b7c226`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.19-bionic`

```console
$ docker pull mariadb@sha256:ea4401df723b580e142e0279eaef860487638560030bd8096b1acce7e4008461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.19-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:52b57a830c2df5b0c458cc9437276bb3bc68815440b87e01f0074f77bd5f3300
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114067383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e11814388aead0ec85dfa86f2373d716893d8e5395866d4a3b80c77caf8749`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:27:11 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 19 Nov 2018 22:27:12 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Mon, 19 Nov 2018 22:27:12 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:27:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:27:48 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:27:49 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:27:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:27:50 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:27:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f465d78b4731fb76c3705184e738b7c14f2b0f3dd31a4921e7d6fc3717a629`  
		Last Modified: Mon, 19 Nov 2018 22:37:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d4551c84ff9e3a0dc8c870f3a62f18075934a68117d0fda72beba53b621fda`  
		Last Modified: Mon, 19 Nov 2018 22:38:00 GMT  
		Size: 73.3 MB (73309509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5b460a14331db1329418bda124f413426f3538a5536ab60fd295634ea4ad6`  
		Last Modified: Mon, 19 Nov 2018 22:37:44 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b547008ac8d17f2df17e54646778f2bd438c6863c727850ba8f3ac63f5cd702`  
		Last Modified: Mon, 19 Nov 2018 22:37:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.19-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:62161b6d297150618f261a133059a1fb7e59ec2598c7da3abf6ef060f72599e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (109010666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d0caebc6669c4a2a593aafbf0e5a5d6dcdce906a6dc1334f594c8aca148484`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:42:51 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 11:42:52 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 11:43:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:44:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:44:32 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:44:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:44:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:44:37 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:44:38 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98bc5e2c7acaf0c11ec7e5a7272869bd8aca1cba0aa50a1697c022653713dae`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc259b62d1e0bbccc8e9aa6ac9048de1ec69fc7e85fb9e8ccbaf5b09653bb6e`  
		Last Modified: Fri, 16 Nov 2018 11:59:37 GMT  
		Size: 72.2 MB (72237088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df4657eb5acaf5a9e288e83acf9143590a997fd85d464fcf2a7bd1c6514faf6`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41569780eafc04716f7870ae432e82439f23deb3b368177322c9e34b3bcdf59`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.19-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bf572451e13925f6efc48b2bd68adc3bd93c151e6e0172d0b5993a9859b69d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120940802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1439ee061d73517b92e0d8ab41301084ee9eb059069d1c84376a7473b70c3895`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:50:19 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 12:50:20 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 12:50:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:51:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:51:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:51:55 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:51:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:51:59 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:52:00 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5babdd314a378179a1ce5c32469d41c1b2d72630e5f4e347821e1493b167c7`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c713b50c8fe251d805944f1f486fc2f946545c730d6af0f2b0aeefe2a7d84b47`  
		Last Modified: Fri, 16 Nov 2018 13:08:16 GMT  
		Size: 76.2 MB (76162796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468a08adac5be5039ba4b23d03d68b13789275c8fc219061bbeb176939358bc0`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68936f014a54163da257a7b20d638ab4db92b36b80c3c802696c369c64b7c226`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:ea4401df723b580e142e0279eaef860487638560030bd8096b1acce7e4008461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:52b57a830c2df5b0c458cc9437276bb3bc68815440b87e01f0074f77bd5f3300
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114067383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e11814388aead0ec85dfa86f2373d716893d8e5395866d4a3b80c77caf8749`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:27:11 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 19 Nov 2018 22:27:12 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Mon, 19 Nov 2018 22:27:12 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:27:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:27:48 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:27:49 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:27:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:27:50 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:27:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f465d78b4731fb76c3705184e738b7c14f2b0f3dd31a4921e7d6fc3717a629`  
		Last Modified: Mon, 19 Nov 2018 22:37:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d4551c84ff9e3a0dc8c870f3a62f18075934a68117d0fda72beba53b621fda`  
		Last Modified: Mon, 19 Nov 2018 22:38:00 GMT  
		Size: 73.3 MB (73309509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a5b460a14331db1329418bda124f413426f3538a5536ab60fd295634ea4ad6`  
		Last Modified: Mon, 19 Nov 2018 22:37:44 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b547008ac8d17f2df17e54646778f2bd438c6863c727850ba8f3ac63f5cd702`  
		Last Modified: Mon, 19 Nov 2018 22:37:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:62161b6d297150618f261a133059a1fb7e59ec2598c7da3abf6ef060f72599e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (109010666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d0caebc6669c4a2a593aafbf0e5a5d6dcdce906a6dc1334f594c8aca148484`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:42:51 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 11:42:52 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 11:43:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:44:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:44:32 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:44:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:44:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:44:37 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:44:38 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98bc5e2c7acaf0c11ec7e5a7272869bd8aca1cba0aa50a1697c022653713dae`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc259b62d1e0bbccc8e9aa6ac9048de1ec69fc7e85fb9e8ccbaf5b09653bb6e`  
		Last Modified: Fri, 16 Nov 2018 11:59:37 GMT  
		Size: 72.2 MB (72237088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df4657eb5acaf5a9e288e83acf9143590a997fd85d464fcf2a7bd1c6514faf6`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41569780eafc04716f7870ae432e82439f23deb3b368177322c9e34b3bcdf59`  
		Last Modified: Fri, 16 Nov 2018 11:59:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bf572451e13925f6efc48b2bd68adc3bd93c151e6e0172d0b5993a9859b69d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120940802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1439ee061d73517b92e0d8ab41301084ee9eb059069d1c84376a7473b70c3895`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:50:19 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 16 Nov 2018 12:50:20 GMT
ENV MARIADB_VERSION=1:10.2.19+maria~bionic
# Fri, 16 Nov 2018 12:50:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:51:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:51:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:51:55 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:51:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:51:59 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:52:00 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5babdd314a378179a1ce5c32469d41c1b2d72630e5f4e347821e1493b167c7`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c713b50c8fe251d805944f1f486fc2f946545c730d6af0f2b0aeefe2a7d84b47`  
		Last Modified: Fri, 16 Nov 2018 13:08:16 GMT  
		Size: 76.2 MB (76162796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468a08adac5be5039ba4b23d03d68b13789275c8fc219061bbeb176939358bc0`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68936f014a54163da257a7b20d638ab4db92b36b80c3c802696c369c64b7c226`  
		Last Modified: Fri, 16 Nov 2018 13:07:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:2dbdd168c07b3817df9b3088ef1b6072325e65569ab543b9142d1ae82cb08d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:a5a80015bbba8daeb1e9820a7822c4f4107bd59391e24368ab2a4d99c64660ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115014012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030c8f4efcc5940b1a3d29c5815a72fdf4c68865ced3bf6733f2b50fb6a4450`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:25:49 GMT
ENV MARIADB_MAJOR=10.3
# Mon, 19 Nov 2018 22:25:50 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Mon, 19 Nov 2018 22:25:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:26:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:26:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:26:16 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:26:18 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:26:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9916314a1d85ce6ef7e94d8459cdf1971fade7d4ec12856eef5d00bf145c6a`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed4bbba52deb41777f9728b2dec9def332ebdc0dac89601d2cd2e55e09ce7`  
		Last Modified: Mon, 19 Nov 2018 22:35:02 GMT  
		Size: 74.3 MB (74256134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f2a29c99a6cc27bf64b264b6a39aaedc7e6c66d64c8d6e0317cea0df3cd6a2`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a003e0ca99e5c8976dd3fa2194dfd008142d860e5c9c7c1991c4c8e1a72c6918`  
		Last Modified: Mon, 19 Nov 2018 22:34:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7b83470957763818550700a46bbacdfd9e74bfca2603fe8e2ab98b76f99529ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109980829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0f2a5499591c76400315b1a6d16d579a8beda6088700b05b3ebbc45aceade7`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:40:58 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 11:40:59 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 11:41:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:42:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:42:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:42:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:42:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:42:30 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:42:31 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67f96cd05b73be4913eccb0cff841b0dec56727d5957598efcd56325f156f1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b904acfa80859eb6c805a2c4913724deba5023e3bf0e956513c491d63c7ccd7`  
		Last Modified: Fri, 16 Nov 2018 11:56:31 GMT  
		Size: 73.2 MB (73207249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf9affdb740eabe8b8dc51a0a5211f5676fb4646a665cb2ea47ae2a9f4c7013`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab703cb6faa3032c430ecfdc1f36bdb255da06db4c0208f17be7de1c0af39a1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3a12ec74c3546fe1a4275e99f88e29d8c5d5f831cbd5995ca51c5a69deeb5b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc268ec093744bd089c9fe7f109f8cb6d6149b82e5d75e29d00d83d01d87ab8e`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:48:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 12:48:17 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 12:48:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:49:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:49:54 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:49:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:50:01 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:50:02 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f48891567107c4c5d4dd03493824c42fa16d6536970e94bccd7b26d2de6c19`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15408124ea4e6669572e6e8610b874418f1b6ca6ab3432fb30462b67b3579c91`  
		Last Modified: Fri, 16 Nov 2018 13:05:56 GMT  
		Size: 77.2 MB (77188880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1742667d70c3f6f27db7c8af7a87fab346b064800a180a56dff0192e57d1cf14`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27810f98d58b7f0e97785304abf0298b0058d8d94f9ccc4b2f9466e39575fdc4`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.10`

```console
$ docker pull mariadb@sha256:2dbdd168c07b3817df9b3088ef1b6072325e65569ab543b9142d1ae82cb08d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.10` - linux; amd64

```console
$ docker pull mariadb@sha256:a5a80015bbba8daeb1e9820a7822c4f4107bd59391e24368ab2a4d99c64660ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115014012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030c8f4efcc5940b1a3d29c5815a72fdf4c68865ced3bf6733f2b50fb6a4450`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:25:49 GMT
ENV MARIADB_MAJOR=10.3
# Mon, 19 Nov 2018 22:25:50 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Mon, 19 Nov 2018 22:25:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:26:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:26:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:26:16 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:26:18 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:26:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9916314a1d85ce6ef7e94d8459cdf1971fade7d4ec12856eef5d00bf145c6a`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed4bbba52deb41777f9728b2dec9def332ebdc0dac89601d2cd2e55e09ce7`  
		Last Modified: Mon, 19 Nov 2018 22:35:02 GMT  
		Size: 74.3 MB (74256134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f2a29c99a6cc27bf64b264b6a39aaedc7e6c66d64c8d6e0317cea0df3cd6a2`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a003e0ca99e5c8976dd3fa2194dfd008142d860e5c9c7c1991c4c8e1a72c6918`  
		Last Modified: Mon, 19 Nov 2018 22:34:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7b83470957763818550700a46bbacdfd9e74bfca2603fe8e2ab98b76f99529ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109980829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0f2a5499591c76400315b1a6d16d579a8beda6088700b05b3ebbc45aceade7`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:40:58 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 11:40:59 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 11:41:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:42:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:42:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:42:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:42:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:42:30 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:42:31 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67f96cd05b73be4913eccb0cff841b0dec56727d5957598efcd56325f156f1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b904acfa80859eb6c805a2c4913724deba5023e3bf0e956513c491d63c7ccd7`  
		Last Modified: Fri, 16 Nov 2018 11:56:31 GMT  
		Size: 73.2 MB (73207249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf9affdb740eabe8b8dc51a0a5211f5676fb4646a665cb2ea47ae2a9f4c7013`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab703cb6faa3032c430ecfdc1f36bdb255da06db4c0208f17be7de1c0af39a1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3a12ec74c3546fe1a4275e99f88e29d8c5d5f831cbd5995ca51c5a69deeb5b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc268ec093744bd089c9fe7f109f8cb6d6149b82e5d75e29d00d83d01d87ab8e`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:48:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 12:48:17 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 12:48:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:49:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:49:54 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:49:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:50:01 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:50:02 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f48891567107c4c5d4dd03493824c42fa16d6536970e94bccd7b26d2de6c19`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15408124ea4e6669572e6e8610b874418f1b6ca6ab3432fb30462b67b3579c91`  
		Last Modified: Fri, 16 Nov 2018 13:05:56 GMT  
		Size: 77.2 MB (77188880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1742667d70c3f6f27db7c8af7a87fab346b064800a180a56dff0192e57d1cf14`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27810f98d58b7f0e97785304abf0298b0058d8d94f9ccc4b2f9466e39575fdc4`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.10-bionic`

```console
$ docker pull mariadb@sha256:2dbdd168c07b3817df9b3088ef1b6072325e65569ab543b9142d1ae82cb08d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a5a80015bbba8daeb1e9820a7822c4f4107bd59391e24368ab2a4d99c64660ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115014012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030c8f4efcc5940b1a3d29c5815a72fdf4c68865ced3bf6733f2b50fb6a4450`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:25:49 GMT
ENV MARIADB_MAJOR=10.3
# Mon, 19 Nov 2018 22:25:50 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Mon, 19 Nov 2018 22:25:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:26:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:26:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:26:16 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:26:18 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:26:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9916314a1d85ce6ef7e94d8459cdf1971fade7d4ec12856eef5d00bf145c6a`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed4bbba52deb41777f9728b2dec9def332ebdc0dac89601d2cd2e55e09ce7`  
		Last Modified: Mon, 19 Nov 2018 22:35:02 GMT  
		Size: 74.3 MB (74256134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f2a29c99a6cc27bf64b264b6a39aaedc7e6c66d64c8d6e0317cea0df3cd6a2`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a003e0ca99e5c8976dd3fa2194dfd008142d860e5c9c7c1991c4c8e1a72c6918`  
		Last Modified: Mon, 19 Nov 2018 22:34:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7b83470957763818550700a46bbacdfd9e74bfca2603fe8e2ab98b76f99529ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109980829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0f2a5499591c76400315b1a6d16d579a8beda6088700b05b3ebbc45aceade7`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:40:58 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 11:40:59 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 11:41:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:42:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:42:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:42:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:42:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:42:30 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:42:31 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67f96cd05b73be4913eccb0cff841b0dec56727d5957598efcd56325f156f1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b904acfa80859eb6c805a2c4913724deba5023e3bf0e956513c491d63c7ccd7`  
		Last Modified: Fri, 16 Nov 2018 11:56:31 GMT  
		Size: 73.2 MB (73207249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf9affdb740eabe8b8dc51a0a5211f5676fb4646a665cb2ea47ae2a9f4c7013`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab703cb6faa3032c430ecfdc1f36bdb255da06db4c0208f17be7de1c0af39a1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3a12ec74c3546fe1a4275e99f88e29d8c5d5f831cbd5995ca51c5a69deeb5b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc268ec093744bd089c9fe7f109f8cb6d6149b82e5d75e29d00d83d01d87ab8e`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:48:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 12:48:17 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 12:48:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:49:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:49:54 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:49:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:50:01 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:50:02 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f48891567107c4c5d4dd03493824c42fa16d6536970e94bccd7b26d2de6c19`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15408124ea4e6669572e6e8610b874418f1b6ca6ab3432fb30462b67b3579c91`  
		Last Modified: Fri, 16 Nov 2018 13:05:56 GMT  
		Size: 77.2 MB (77188880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1742667d70c3f6f27db7c8af7a87fab346b064800a180a56dff0192e57d1cf14`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27810f98d58b7f0e97785304abf0298b0058d8d94f9ccc4b2f9466e39575fdc4`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:2dbdd168c07b3817df9b3088ef1b6072325e65569ab543b9142d1ae82cb08d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a5a80015bbba8daeb1e9820a7822c4f4107bd59391e24368ab2a4d99c64660ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115014012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030c8f4efcc5940b1a3d29c5815a72fdf4c68865ced3bf6733f2b50fb6a4450`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:25:49 GMT
ENV MARIADB_MAJOR=10.3
# Mon, 19 Nov 2018 22:25:50 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Mon, 19 Nov 2018 22:25:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:26:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:26:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:26:16 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:26:18 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:26:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9916314a1d85ce6ef7e94d8459cdf1971fade7d4ec12856eef5d00bf145c6a`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed4bbba52deb41777f9728b2dec9def332ebdc0dac89601d2cd2e55e09ce7`  
		Last Modified: Mon, 19 Nov 2018 22:35:02 GMT  
		Size: 74.3 MB (74256134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f2a29c99a6cc27bf64b264b6a39aaedc7e6c66d64c8d6e0317cea0df3cd6a2`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a003e0ca99e5c8976dd3fa2194dfd008142d860e5c9c7c1991c4c8e1a72c6918`  
		Last Modified: Mon, 19 Nov 2018 22:34:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7b83470957763818550700a46bbacdfd9e74bfca2603fe8e2ab98b76f99529ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109980829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0f2a5499591c76400315b1a6d16d579a8beda6088700b05b3ebbc45aceade7`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:40:58 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 11:40:59 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 11:41:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:42:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:42:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:42:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:42:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:42:30 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:42:31 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67f96cd05b73be4913eccb0cff841b0dec56727d5957598efcd56325f156f1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b904acfa80859eb6c805a2c4913724deba5023e3bf0e956513c491d63c7ccd7`  
		Last Modified: Fri, 16 Nov 2018 11:56:31 GMT  
		Size: 73.2 MB (73207249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf9affdb740eabe8b8dc51a0a5211f5676fb4646a665cb2ea47ae2a9f4c7013`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab703cb6faa3032c430ecfdc1f36bdb255da06db4c0208f17be7de1c0af39a1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3a12ec74c3546fe1a4275e99f88e29d8c5d5f831cbd5995ca51c5a69deeb5b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc268ec093744bd089c9fe7f109f8cb6d6149b82e5d75e29d00d83d01d87ab8e`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:48:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 12:48:17 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 12:48:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:49:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:49:54 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:49:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:50:01 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:50:02 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f48891567107c4c5d4dd03493824c42fa16d6536970e94bccd7b26d2de6c19`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15408124ea4e6669572e6e8610b874418f1b6ca6ab3432fb30462b67b3579c91`  
		Last Modified: Fri, 16 Nov 2018 13:05:56 GMT  
		Size: 77.2 MB (77188880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1742667d70c3f6f27db7c8af7a87fab346b064800a180a56dff0192e57d1cf14`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27810f98d58b7f0e97785304abf0298b0058d8d94f9ccc4b2f9466e39575fdc4`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4`

```console
$ docker pull mariadb@sha256:47c6c9a36492334bcbf6a64540ff5eefd1021b955dda4ac9c33b02fac9eb5b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4` - linux; amd64

```console
$ docker pull mariadb@sha256:86b97fec044e7f6027b8b797c67f504f74d4f56ea1418762710ce3b9ce474d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115834251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a310b633fb41e185fb2c5b366bc0246b90526f415d82a25eb1374f1e9a0df180`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:24:49 GMT
ENV MARIADB_MAJOR=10.4
# Mon, 19 Nov 2018 22:24:49 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Mon, 19 Nov 2018 22:24:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:25:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:25:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:25:24 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:25:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:25:25 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:25:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889325f4a97f9d559262a70534a39ca5b38dde4bbbba0073b1af7e8ecb87201`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853fd3a6890dacb2b8d090b66220c4b61457a4007bbf12247cee5c0f753f27c2`  
		Last Modified: Mon, 19 Nov 2018 22:33:32 GMT  
		Size: 75.1 MB (75076373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd51d3475e24f0e2ebd9f5f3d3573690c4019cab7991b682d440cec84cfa5c`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d036503dd4563495a4b1f5249a08f494b71724e5ef9ce45fb5b7d1407bc04e`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7a65cc7fc3c2e8681767df46136de9de072efc64c8b7d554bfe2c2272a23fc40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110796278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffcec78b1b03fa8c9742109514af2c11aa41352785143d664c8949259cdc286`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:39:08 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 11:39:09 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 11:39:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:40:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:40:29 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:40:30 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:40:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:40:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:40:33 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:40:34 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e2d28d8ec03ab16d8f20e96534d863d21928d5e4d1e7ccacffc157fc691d36`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e85505480d41bc69e57c60fc551e4a699cdc0c89b1d8d3e2256dd627c0bc0fb`  
		Last Modified: Fri, 16 Nov 2018 11:54:15 GMT  
		Size: 74.0 MB (74022703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a8ad86e0f8d98cd5d64e40091b18dd35f3fb80068c5694b045d4e0e4c01913`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f24dbe970c633503d1d046551a5f4348e7354da78196387e1aa81097bee3a8a`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; ppc64le

```console
$ docker pull mariadb@sha256:330402495dab3523019b910910dbc809e37458008f9c0027c943a4971b9e239a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122763254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bf3154c5afe48975943908c2aa9c664266d1e3c9109a9627a1f25a9da73f5b`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:46:02 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 12:46:02 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 12:46:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:47:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:47:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:47:47 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:47:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:47:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:47:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:47:59 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81db33892c065ebbd395690114a67343d4d5c4ef0a1438f9f6943f41eb99dde5`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb20dae39d355d4d165792be6783fe4c4edafbfeb4b3811fdfc97d3251770ef`  
		Last Modified: Fri, 16 Nov 2018 13:04:31 GMT  
		Size: 78.0 MB (77985249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171132c3fd09de4e9bf32783ff071b7af0a76dcf8830a5a3a2f2d587cecde3b7`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de12f716189b668ff1e516167a9f8e6d2cc8cb0003de8f15b35327dfee3a2e9`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.0`

```console
$ docker pull mariadb@sha256:47c6c9a36492334bcbf6a64540ff5eefd1021b955dda4ac9c33b02fac9eb5b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4.0` - linux; amd64

```console
$ docker pull mariadb@sha256:86b97fec044e7f6027b8b797c67f504f74d4f56ea1418762710ce3b9ce474d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115834251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a310b633fb41e185fb2c5b366bc0246b90526f415d82a25eb1374f1e9a0df180`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:24:49 GMT
ENV MARIADB_MAJOR=10.4
# Mon, 19 Nov 2018 22:24:49 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Mon, 19 Nov 2018 22:24:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:25:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:25:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:25:24 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:25:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:25:25 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:25:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889325f4a97f9d559262a70534a39ca5b38dde4bbbba0073b1af7e8ecb87201`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853fd3a6890dacb2b8d090b66220c4b61457a4007bbf12247cee5c0f753f27c2`  
		Last Modified: Mon, 19 Nov 2018 22:33:32 GMT  
		Size: 75.1 MB (75076373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd51d3475e24f0e2ebd9f5f3d3573690c4019cab7991b682d440cec84cfa5c`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d036503dd4563495a4b1f5249a08f494b71724e5ef9ce45fb5b7d1407bc04e`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.0` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7a65cc7fc3c2e8681767df46136de9de072efc64c8b7d554bfe2c2272a23fc40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110796278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffcec78b1b03fa8c9742109514af2c11aa41352785143d664c8949259cdc286`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:39:08 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 11:39:09 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 11:39:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:40:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:40:29 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:40:30 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:40:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:40:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:40:33 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:40:34 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e2d28d8ec03ab16d8f20e96534d863d21928d5e4d1e7ccacffc157fc691d36`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e85505480d41bc69e57c60fc551e4a699cdc0c89b1d8d3e2256dd627c0bc0fb`  
		Last Modified: Fri, 16 Nov 2018 11:54:15 GMT  
		Size: 74.0 MB (74022703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a8ad86e0f8d98cd5d64e40091b18dd35f3fb80068c5694b045d4e0e4c01913`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f24dbe970c633503d1d046551a5f4348e7354da78196387e1aa81097bee3a8a`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:330402495dab3523019b910910dbc809e37458008f9c0027c943a4971b9e239a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122763254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bf3154c5afe48975943908c2aa9c664266d1e3c9109a9627a1f25a9da73f5b`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:46:02 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 12:46:02 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 12:46:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:47:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:47:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:47:47 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:47:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:47:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:47:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:47:59 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81db33892c065ebbd395690114a67343d4d5c4ef0a1438f9f6943f41eb99dde5`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb20dae39d355d4d165792be6783fe4c4edafbfeb4b3811fdfc97d3251770ef`  
		Last Modified: Fri, 16 Nov 2018 13:04:31 GMT  
		Size: 78.0 MB (77985249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171132c3fd09de4e9bf32783ff071b7af0a76dcf8830a5a3a2f2d587cecde3b7`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de12f716189b668ff1e516167a9f8e6d2cc8cb0003de8f15b35327dfee3a2e9`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.0-bionic`

```console
$ docker pull mariadb@sha256:47c6c9a36492334bcbf6a64540ff5eefd1021b955dda4ac9c33b02fac9eb5b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4.0-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:86b97fec044e7f6027b8b797c67f504f74d4f56ea1418762710ce3b9ce474d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115834251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a310b633fb41e185fb2c5b366bc0246b90526f415d82a25eb1374f1e9a0df180`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:24:49 GMT
ENV MARIADB_MAJOR=10.4
# Mon, 19 Nov 2018 22:24:49 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Mon, 19 Nov 2018 22:24:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:25:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:25:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:25:24 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:25:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:25:25 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:25:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889325f4a97f9d559262a70534a39ca5b38dde4bbbba0073b1af7e8ecb87201`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853fd3a6890dacb2b8d090b66220c4b61457a4007bbf12247cee5c0f753f27c2`  
		Last Modified: Mon, 19 Nov 2018 22:33:32 GMT  
		Size: 75.1 MB (75076373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd51d3475e24f0e2ebd9f5f3d3573690c4019cab7991b682d440cec84cfa5c`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d036503dd4563495a4b1f5249a08f494b71724e5ef9ce45fb5b7d1407bc04e`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.0-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7a65cc7fc3c2e8681767df46136de9de072efc64c8b7d554bfe2c2272a23fc40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110796278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffcec78b1b03fa8c9742109514af2c11aa41352785143d664c8949259cdc286`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:39:08 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 11:39:09 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 11:39:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:40:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:40:29 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:40:30 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:40:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:40:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:40:33 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:40:34 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e2d28d8ec03ab16d8f20e96534d863d21928d5e4d1e7ccacffc157fc691d36`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e85505480d41bc69e57c60fc551e4a699cdc0c89b1d8d3e2256dd627c0bc0fb`  
		Last Modified: Fri, 16 Nov 2018 11:54:15 GMT  
		Size: 74.0 MB (74022703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a8ad86e0f8d98cd5d64e40091b18dd35f3fb80068c5694b045d4e0e4c01913`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f24dbe970c633503d1d046551a5f4348e7354da78196387e1aa81097bee3a8a`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.0-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:330402495dab3523019b910910dbc809e37458008f9c0027c943a4971b9e239a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122763254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bf3154c5afe48975943908c2aa9c664266d1e3c9109a9627a1f25a9da73f5b`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:46:02 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 12:46:02 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 12:46:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:47:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:47:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:47:47 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:47:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:47:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:47:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:47:59 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81db33892c065ebbd395690114a67343d4d5c4ef0a1438f9f6943f41eb99dde5`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb20dae39d355d4d165792be6783fe4c4edafbfeb4b3811fdfc97d3251770ef`  
		Last Modified: Fri, 16 Nov 2018 13:04:31 GMT  
		Size: 78.0 MB (77985249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171132c3fd09de4e9bf32783ff071b7af0a76dcf8830a5a3a2f2d587cecde3b7`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de12f716189b668ff1e516167a9f8e6d2cc8cb0003de8f15b35327dfee3a2e9`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4-bionic`

```console
$ docker pull mariadb@sha256:47c6c9a36492334bcbf6a64540ff5eefd1021b955dda4ac9c33b02fac9eb5b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:86b97fec044e7f6027b8b797c67f504f74d4f56ea1418762710ce3b9ce474d9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115834251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a310b633fb41e185fb2c5b366bc0246b90526f415d82a25eb1374f1e9a0df180`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:24:49 GMT
ENV MARIADB_MAJOR=10.4
# Mon, 19 Nov 2018 22:24:49 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Mon, 19 Nov 2018 22:24:50 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:25:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:25:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:25:24 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:25:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:25:25 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:25:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889325f4a97f9d559262a70534a39ca5b38dde4bbbba0073b1af7e8ecb87201`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853fd3a6890dacb2b8d090b66220c4b61457a4007bbf12247cee5c0f753f27c2`  
		Last Modified: Mon, 19 Nov 2018 22:33:32 GMT  
		Size: 75.1 MB (75076373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd51d3475e24f0e2ebd9f5f3d3573690c4019cab7991b682d440cec84cfa5c`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d036503dd4563495a4b1f5249a08f494b71724e5ef9ce45fb5b7d1407bc04e`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7a65cc7fc3c2e8681767df46136de9de072efc64c8b7d554bfe2c2272a23fc40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110796278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffcec78b1b03fa8c9742109514af2c11aa41352785143d664c8949259cdc286`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:39:08 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 11:39:09 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 11:39:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:40:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:40:29 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:40:30 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:40:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:40:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:40:33 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:40:34 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e2d28d8ec03ab16d8f20e96534d863d21928d5e4d1e7ccacffc157fc691d36`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e85505480d41bc69e57c60fc551e4a699cdc0c89b1d8d3e2256dd627c0bc0fb`  
		Last Modified: Fri, 16 Nov 2018 11:54:15 GMT  
		Size: 74.0 MB (74022703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a8ad86e0f8d98cd5d64e40091b18dd35f3fb80068c5694b045d4e0e4c01913`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f24dbe970c633503d1d046551a5f4348e7354da78196387e1aa81097bee3a8a`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:330402495dab3523019b910910dbc809e37458008f9c0027c943a4971b9e239a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122763254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bf3154c5afe48975943908c2aa9c664266d1e3c9109a9627a1f25a9da73f5b`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:46:02 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 16 Nov 2018 12:46:02 GMT
ENV MARIADB_VERSION=1:10.4.0+maria~bionic
# Fri, 16 Nov 2018 12:46:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:47:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:47:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:47:47 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:47:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:47:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:47:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:47:59 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81db33892c065ebbd395690114a67343d4d5c4ef0a1438f9f6943f41eb99dde5`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb20dae39d355d4d165792be6783fe4c4edafbfeb4b3811fdfc97d3251770ef`  
		Last Modified: Fri, 16 Nov 2018 13:04:31 GMT  
		Size: 78.0 MB (77985249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171132c3fd09de4e9bf32783ff071b7af0a76dcf8830a5a3a2f2d587cecde3b7`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de12f716189b668ff1e516167a9f8e6d2cc8cb0003de8f15b35327dfee3a2e9`  
		Last Modified: Fri, 16 Nov 2018 13:03:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:2dbdd168c07b3817df9b3088ef1b6072325e65569ab543b9142d1ae82cb08d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a5a80015bbba8daeb1e9820a7822c4f4107bd59391e24368ab2a4d99c64660ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115014012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030c8f4efcc5940b1a3d29c5815a72fdf4c68865ced3bf6733f2b50fb6a4450`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:25:49 GMT
ENV MARIADB_MAJOR=10.3
# Mon, 19 Nov 2018 22:25:50 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Mon, 19 Nov 2018 22:25:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:26:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:26:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:26:16 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:26:18 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:26:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9916314a1d85ce6ef7e94d8459cdf1971fade7d4ec12856eef5d00bf145c6a`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed4bbba52deb41777f9728b2dec9def332ebdc0dac89601d2cd2e55e09ce7`  
		Last Modified: Mon, 19 Nov 2018 22:35:02 GMT  
		Size: 74.3 MB (74256134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f2a29c99a6cc27bf64b264b6a39aaedc7e6c66d64c8d6e0317cea0df3cd6a2`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a003e0ca99e5c8976dd3fa2194dfd008142d860e5c9c7c1991c4c8e1a72c6918`  
		Last Modified: Mon, 19 Nov 2018 22:34:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7b83470957763818550700a46bbacdfd9e74bfca2603fe8e2ab98b76f99529ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109980829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0f2a5499591c76400315b1a6d16d579a8beda6088700b05b3ebbc45aceade7`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:40:58 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 11:40:59 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 11:41:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:42:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:42:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:42:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:42:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:42:30 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:42:31 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67f96cd05b73be4913eccb0cff841b0dec56727d5957598efcd56325f156f1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b904acfa80859eb6c805a2c4913724deba5023e3bf0e956513c491d63c7ccd7`  
		Last Modified: Fri, 16 Nov 2018 11:56:31 GMT  
		Size: 73.2 MB (73207249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf9affdb740eabe8b8dc51a0a5211f5676fb4646a665cb2ea47ae2a9f4c7013`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab703cb6faa3032c430ecfdc1f36bdb255da06db4c0208f17be7de1c0af39a1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3a12ec74c3546fe1a4275e99f88e29d8c5d5f831cbd5995ca51c5a69deeb5b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc268ec093744bd089c9fe7f109f8cb6d6149b82e5d75e29d00d83d01d87ab8e`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:48:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 12:48:17 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 12:48:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:49:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:49:54 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:49:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:50:01 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:50:02 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f48891567107c4c5d4dd03493824c42fa16d6536970e94bccd7b26d2de6c19`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15408124ea4e6669572e6e8610b874418f1b6ca6ab3432fb30462b67b3579c91`  
		Last Modified: Fri, 16 Nov 2018 13:05:56 GMT  
		Size: 77.2 MB (77188880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1742667d70c3f6f27db7c8af7a87fab346b064800a180a56dff0192e57d1cf14`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27810f98d58b7f0e97785304abf0298b0058d8d94f9ccc4b2f9466e39575fdc4`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:4e1a39d6d101e8cb9d82ea6d57a0eb80e376627ba30960f594453950bcf3d10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:9f746550847e7b1866eb50b60a89a8edb6a87c8c9ac755a17d748be90b5a720b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfff0af4a5e658de7f77c3be23b1ebbb13f4ce7cdfe2f8c227aa00a46a25b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:31:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:31:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:31:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:31:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:31:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:32:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:32:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:32:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:32:06 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Nov 2018 22:32:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 19 Nov 2018 22:32:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:32:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:32:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:32:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:32:48 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:32:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc51790586f266ebd5f770f10c4774f594ba0efe561f4e3b6295bde0069a6c`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722c8e90ccfa0a5f5678c676450d09ed9a555a9c2c5922f305bacc2b1d160e6f`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de3786144ebd1d638f4e8d135dcdb58209b7e9d340f6440165e6027ed33e1ac`  
		Last Modified: Mon, 19 Nov 2018 22:42:44 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f79c4a8ff73c32f4dffff0e3f16a4dc73b7425a66df5dc8ebaf245923b1220`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7237eecc6769b943cdb6254823f729d3089f01e69359ca2cac9919dfd913`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 4.3 MB (4262388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9934140415a09be381907148f29fdb7ef752d11ac697684ae49d45f267537`  
		Last Modified: Mon, 19 Nov 2018 22:42:41 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bba30bb0a8865bcd3133cf480d8c9b3bf55d20a962795385f79891f31a26215`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24935139caaece9e29db1409fe6d4ae0522c08dae7a96debb780595907fd9ec`  
		Last Modified: Mon, 19 Nov 2018 22:42:50 GMT  
		Size: 45.3 MB (45276172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490ae42386de2da2dbe14672c6c1952166b8d0a9fc6cfa07711a464433dd923`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd43062bc53fb92a58eb6316d7d4810e10c6a2f24f51fedee46bcbaa10d9f11b`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:8153ebfec1b54053aa9ee5245f13f5b0174f7041c287fee381bd310f16b1c98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114970916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07e5b05adb031c76a4d47d3ab41cf9b982ea488b23501ccb17dc9ca8b9d83f3`
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
# Fri, 16 Nov 2018 16:36:25 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:36:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:36:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 16:36:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:37:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:37:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:37:29 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:37:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:37:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:37:31 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:37:31 GMT
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
	-	`sha256:490964ffd3c626c7149d24c4c06dec3b829c5910f5737cac62772958f069301e`  
		Last Modified: Fri, 16 Nov 2018 16:40:06 GMT  
		Size: 1.6 MB (1552188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4aa3a1540c9245ac26c3c19b3bc5417ddc75a540fe9c3e0a462847e892652e`  
		Last Modified: Fri, 16 Nov 2018 16:40:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c88c554abc9c524005b93dc7c544017aa68b1f9169c258d569b82889fefd62`  
		Last Modified: Fri, 16 Nov 2018 16:40:08 GMT  
		Size: 4.7 MB (4667945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64c0c135bceab2e23751643c820ab0753f7aec50a7eaf680578ac78e4539dd7`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43087cad1216cfea673a5fa5b9501a438eab9fdbc233d86f252de95079e94d3`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d75b00d768f294770e5fa8b57bc6bc9c7d0892ba24f1aa2db0d60d3357dfec`  
		Last Modified: Fri, 16 Nov 2018 16:40:24 GMT  
		Size: 43.8 MB (43826886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece63093428e1568991412b7665e1c3cadf43650144b48f2520b5447810a7e04`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7399ee251195f41dcce446eff68137aa18b94ed1638e70358037a83c55e8bbfb`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7152545d060218142f672096e56966fb927f034c3f949be751c281b393054fba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112298629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16322f5e8497c673cff74fbc6f7c50df67eb5060848a02c995fe7a09f9c1b6cf`
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
# Fri, 16 Nov 2018 13:00:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 13:00:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 13:02:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:02:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 13:02:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 13:02:06 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 13:02:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 13:02:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 13:03:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 13:03:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 13:03:13 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 13:03:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 13:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 13:03:18 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 13:03:20 GMT
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
	-	`sha256:99188a811aa80ac694ad6a6d6e7ac52bcb67b6158579a5b7ac92a6c1ae80fee5`  
		Last Modified: Fri, 16 Nov 2018 13:12:12 GMT  
		Size: 1.5 MB (1545282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37463a1aa689bdfbe3c088fb0f854355bf7b3845208ddb57fc4564d3b54e665`  
		Last Modified: Fri, 16 Nov 2018 13:12:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648d26175601a0243eb227b4d4264fba48ad17509769f9ea520ea3954ef61210`  
		Last Modified: Fri, 16 Nov 2018 13:12:16 GMT  
		Size: 4.7 MB (4708839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295344094947e717bf7dd21a71b9eba929acccc2e5747e541128104124845081`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4990f6a52792723473a3727efc068d8a6580da2d5f5637f28c42968894da8a`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6410b58ff890c010b4ae54d17e96096d900e80a5dce692205a9ec53ae321d`  
		Last Modified: Fri, 16 Nov 2018 13:12:20 GMT  
		Size: 36.2 MB (36188255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df7c9e141902060b6fe3fc73871d4136f5a49df235d33526007b44501035b6f`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44558a02148c23fb81f891c60172830f25b70c28f1d62c6be7593c4afa9139d0`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:4e1a39d6d101e8cb9d82ea6d57a0eb80e376627ba30960f594453950bcf3d10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:9f746550847e7b1866eb50b60a89a8edb6a87c8c9ac755a17d748be90b5a720b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfff0af4a5e658de7f77c3be23b1ebbb13f4ce7cdfe2f8c227aa00a46a25b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:31:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:31:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:31:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:31:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:31:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:32:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:32:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:32:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:32:06 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Nov 2018 22:32:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 19 Nov 2018 22:32:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:32:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:32:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:32:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:32:48 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:32:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc51790586f266ebd5f770f10c4774f594ba0efe561f4e3b6295bde0069a6c`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722c8e90ccfa0a5f5678c676450d09ed9a555a9c2c5922f305bacc2b1d160e6f`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de3786144ebd1d638f4e8d135dcdb58209b7e9d340f6440165e6027ed33e1ac`  
		Last Modified: Mon, 19 Nov 2018 22:42:44 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f79c4a8ff73c32f4dffff0e3f16a4dc73b7425a66df5dc8ebaf245923b1220`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7237eecc6769b943cdb6254823f729d3089f01e69359ca2cac9919dfd913`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 4.3 MB (4262388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9934140415a09be381907148f29fdb7ef752d11ac697684ae49d45f267537`  
		Last Modified: Mon, 19 Nov 2018 22:42:41 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bba30bb0a8865bcd3133cf480d8c9b3bf55d20a962795385f79891f31a26215`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24935139caaece9e29db1409fe6d4ae0522c08dae7a96debb780595907fd9ec`  
		Last Modified: Mon, 19 Nov 2018 22:42:50 GMT  
		Size: 45.3 MB (45276172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490ae42386de2da2dbe14672c6c1952166b8d0a9fc6cfa07711a464433dd923`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd43062bc53fb92a58eb6316d7d4810e10c6a2f24f51fedee46bcbaa10d9f11b`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:8153ebfec1b54053aa9ee5245f13f5b0174f7041c287fee381bd310f16b1c98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114970916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07e5b05adb031c76a4d47d3ab41cf9b982ea488b23501ccb17dc9ca8b9d83f3`
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
# Fri, 16 Nov 2018 16:36:25 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:36:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:36:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 16:36:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:37:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:37:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:37:29 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:37:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:37:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:37:31 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:37:31 GMT
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
	-	`sha256:490964ffd3c626c7149d24c4c06dec3b829c5910f5737cac62772958f069301e`  
		Last Modified: Fri, 16 Nov 2018 16:40:06 GMT  
		Size: 1.6 MB (1552188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4aa3a1540c9245ac26c3c19b3bc5417ddc75a540fe9c3e0a462847e892652e`  
		Last Modified: Fri, 16 Nov 2018 16:40:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c88c554abc9c524005b93dc7c544017aa68b1f9169c258d569b82889fefd62`  
		Last Modified: Fri, 16 Nov 2018 16:40:08 GMT  
		Size: 4.7 MB (4667945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64c0c135bceab2e23751643c820ab0753f7aec50a7eaf680578ac78e4539dd7`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43087cad1216cfea673a5fa5b9501a438eab9fdbc233d86f252de95079e94d3`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d75b00d768f294770e5fa8b57bc6bc9c7d0892ba24f1aa2db0d60d3357dfec`  
		Last Modified: Fri, 16 Nov 2018 16:40:24 GMT  
		Size: 43.8 MB (43826886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece63093428e1568991412b7665e1c3cadf43650144b48f2520b5447810a7e04`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7399ee251195f41dcce446eff68137aa18b94ed1638e70358037a83c55e8bbfb`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7152545d060218142f672096e56966fb927f034c3f949be751c281b393054fba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112298629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16322f5e8497c673cff74fbc6f7c50df67eb5060848a02c995fe7a09f9c1b6cf`
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
# Fri, 16 Nov 2018 13:00:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 13:00:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 13:02:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:02:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 13:02:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 13:02:06 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 13:02:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 13:02:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 13:03:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 13:03:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 13:03:13 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 13:03:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 13:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 13:03:18 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 13:03:20 GMT
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
	-	`sha256:99188a811aa80ac694ad6a6d6e7ac52bcb67b6158579a5b7ac92a6c1ae80fee5`  
		Last Modified: Fri, 16 Nov 2018 13:12:12 GMT  
		Size: 1.5 MB (1545282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37463a1aa689bdfbe3c088fb0f854355bf7b3845208ddb57fc4564d3b54e665`  
		Last Modified: Fri, 16 Nov 2018 13:12:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648d26175601a0243eb227b4d4264fba48ad17509769f9ea520ea3954ef61210`  
		Last Modified: Fri, 16 Nov 2018 13:12:16 GMT  
		Size: 4.7 MB (4708839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295344094947e717bf7dd21a71b9eba929acccc2e5747e541128104124845081`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4990f6a52792723473a3727efc068d8a6580da2d5f5637f28c42968894da8a`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6410b58ff890c010b4ae54d17e96096d900e80a5dce692205a9ec53ae321d`  
		Last Modified: Fri, 16 Nov 2018 13:12:20 GMT  
		Size: 36.2 MB (36188255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df7c9e141902060b6fe3fc73871d4136f5a49df235d33526007b44501035b6f`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44558a02148c23fb81f891c60172830f25b70c28f1d62c6be7593c4afa9139d0`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.62`

```console
$ docker pull mariadb@sha256:4e1a39d6d101e8cb9d82ea6d57a0eb80e376627ba30960f594453950bcf3d10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.62` - linux; amd64

```console
$ docker pull mariadb@sha256:9f746550847e7b1866eb50b60a89a8edb6a87c8c9ac755a17d748be90b5a720b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfff0af4a5e658de7f77c3be23b1ebbb13f4ce7cdfe2f8c227aa00a46a25b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:31:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:31:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:31:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:31:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:31:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:32:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:32:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:32:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:32:06 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Nov 2018 22:32:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 19 Nov 2018 22:32:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:32:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:32:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:32:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:32:48 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:32:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc51790586f266ebd5f770f10c4774f594ba0efe561f4e3b6295bde0069a6c`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722c8e90ccfa0a5f5678c676450d09ed9a555a9c2c5922f305bacc2b1d160e6f`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de3786144ebd1d638f4e8d135dcdb58209b7e9d340f6440165e6027ed33e1ac`  
		Last Modified: Mon, 19 Nov 2018 22:42:44 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f79c4a8ff73c32f4dffff0e3f16a4dc73b7425a66df5dc8ebaf245923b1220`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7237eecc6769b943cdb6254823f729d3089f01e69359ca2cac9919dfd913`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 4.3 MB (4262388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9934140415a09be381907148f29fdb7ef752d11ac697684ae49d45f267537`  
		Last Modified: Mon, 19 Nov 2018 22:42:41 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bba30bb0a8865bcd3133cf480d8c9b3bf55d20a962795385f79891f31a26215`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24935139caaece9e29db1409fe6d4ae0522c08dae7a96debb780595907fd9ec`  
		Last Modified: Mon, 19 Nov 2018 22:42:50 GMT  
		Size: 45.3 MB (45276172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490ae42386de2da2dbe14672c6c1952166b8d0a9fc6cfa07711a464433dd923`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd43062bc53fb92a58eb6316d7d4810e10c6a2f24f51fedee46bcbaa10d9f11b`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62` - linux; 386

```console
$ docker pull mariadb@sha256:8153ebfec1b54053aa9ee5245f13f5b0174f7041c287fee381bd310f16b1c98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114970916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07e5b05adb031c76a4d47d3ab41cf9b982ea488b23501ccb17dc9ca8b9d83f3`
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
# Fri, 16 Nov 2018 16:36:25 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:36:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:36:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 16:36:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:37:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:37:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:37:29 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:37:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:37:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:37:31 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:37:31 GMT
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
	-	`sha256:490964ffd3c626c7149d24c4c06dec3b829c5910f5737cac62772958f069301e`  
		Last Modified: Fri, 16 Nov 2018 16:40:06 GMT  
		Size: 1.6 MB (1552188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4aa3a1540c9245ac26c3c19b3bc5417ddc75a540fe9c3e0a462847e892652e`  
		Last Modified: Fri, 16 Nov 2018 16:40:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c88c554abc9c524005b93dc7c544017aa68b1f9169c258d569b82889fefd62`  
		Last Modified: Fri, 16 Nov 2018 16:40:08 GMT  
		Size: 4.7 MB (4667945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64c0c135bceab2e23751643c820ab0753f7aec50a7eaf680578ac78e4539dd7`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43087cad1216cfea673a5fa5b9501a438eab9fdbc233d86f252de95079e94d3`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d75b00d768f294770e5fa8b57bc6bc9c7d0892ba24f1aa2db0d60d3357dfec`  
		Last Modified: Fri, 16 Nov 2018 16:40:24 GMT  
		Size: 43.8 MB (43826886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece63093428e1568991412b7665e1c3cadf43650144b48f2520b5447810a7e04`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7399ee251195f41dcce446eff68137aa18b94ed1638e70358037a83c55e8bbfb`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7152545d060218142f672096e56966fb927f034c3f949be751c281b393054fba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112298629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16322f5e8497c673cff74fbc6f7c50df67eb5060848a02c995fe7a09f9c1b6cf`
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
# Fri, 16 Nov 2018 13:00:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 13:00:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 13:02:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:02:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 13:02:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 13:02:06 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 13:02:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 13:02:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 13:03:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 13:03:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 13:03:13 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 13:03:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 13:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 13:03:18 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 13:03:20 GMT
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
	-	`sha256:99188a811aa80ac694ad6a6d6e7ac52bcb67b6158579a5b7ac92a6c1ae80fee5`  
		Last Modified: Fri, 16 Nov 2018 13:12:12 GMT  
		Size: 1.5 MB (1545282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37463a1aa689bdfbe3c088fb0f854355bf7b3845208ddb57fc4564d3b54e665`  
		Last Modified: Fri, 16 Nov 2018 13:12:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648d26175601a0243eb227b4d4264fba48ad17509769f9ea520ea3954ef61210`  
		Last Modified: Fri, 16 Nov 2018 13:12:16 GMT  
		Size: 4.7 MB (4708839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295344094947e717bf7dd21a71b9eba929acccc2e5747e541128104124845081`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4990f6a52792723473a3727efc068d8a6580da2d5f5637f28c42968894da8a`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6410b58ff890c010b4ae54d17e96096d900e80a5dce692205a9ec53ae321d`  
		Last Modified: Fri, 16 Nov 2018 13:12:20 GMT  
		Size: 36.2 MB (36188255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df7c9e141902060b6fe3fc73871d4136f5a49df235d33526007b44501035b6f`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44558a02148c23fb81f891c60172830f25b70c28f1d62c6be7593c4afa9139d0`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.62-trusty`

```console
$ docker pull mariadb@sha256:4e1a39d6d101e8cb9d82ea6d57a0eb80e376627ba30960f594453950bcf3d10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.62-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:9f746550847e7b1866eb50b60a89a8edb6a87c8c9ac755a17d748be90b5a720b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfff0af4a5e658de7f77c3be23b1ebbb13f4ce7cdfe2f8c227aa00a46a25b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:31:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:31:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:31:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:31:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:31:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:32:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:32:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:32:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:32:06 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Nov 2018 22:32:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 19 Nov 2018 22:32:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:32:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:32:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:32:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:32:48 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:32:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc51790586f266ebd5f770f10c4774f594ba0efe561f4e3b6295bde0069a6c`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722c8e90ccfa0a5f5678c676450d09ed9a555a9c2c5922f305bacc2b1d160e6f`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de3786144ebd1d638f4e8d135dcdb58209b7e9d340f6440165e6027ed33e1ac`  
		Last Modified: Mon, 19 Nov 2018 22:42:44 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f79c4a8ff73c32f4dffff0e3f16a4dc73b7425a66df5dc8ebaf245923b1220`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7237eecc6769b943cdb6254823f729d3089f01e69359ca2cac9919dfd913`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 4.3 MB (4262388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9934140415a09be381907148f29fdb7ef752d11ac697684ae49d45f267537`  
		Last Modified: Mon, 19 Nov 2018 22:42:41 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bba30bb0a8865bcd3133cf480d8c9b3bf55d20a962795385f79891f31a26215`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24935139caaece9e29db1409fe6d4ae0522c08dae7a96debb780595907fd9ec`  
		Last Modified: Mon, 19 Nov 2018 22:42:50 GMT  
		Size: 45.3 MB (45276172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490ae42386de2da2dbe14672c6c1952166b8d0a9fc6cfa07711a464433dd923`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd43062bc53fb92a58eb6316d7d4810e10c6a2f24f51fedee46bcbaa10d9f11b`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:8153ebfec1b54053aa9ee5245f13f5b0174f7041c287fee381bd310f16b1c98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114970916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07e5b05adb031c76a4d47d3ab41cf9b982ea488b23501ccb17dc9ca8b9d83f3`
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
# Fri, 16 Nov 2018 16:36:25 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:36:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:36:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 16:36:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:37:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:37:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:37:29 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:37:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:37:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:37:31 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:37:31 GMT
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
	-	`sha256:490964ffd3c626c7149d24c4c06dec3b829c5910f5737cac62772958f069301e`  
		Last Modified: Fri, 16 Nov 2018 16:40:06 GMT  
		Size: 1.6 MB (1552188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4aa3a1540c9245ac26c3c19b3bc5417ddc75a540fe9c3e0a462847e892652e`  
		Last Modified: Fri, 16 Nov 2018 16:40:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c88c554abc9c524005b93dc7c544017aa68b1f9169c258d569b82889fefd62`  
		Last Modified: Fri, 16 Nov 2018 16:40:08 GMT  
		Size: 4.7 MB (4667945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64c0c135bceab2e23751643c820ab0753f7aec50a7eaf680578ac78e4539dd7`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43087cad1216cfea673a5fa5b9501a438eab9fdbc233d86f252de95079e94d3`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d75b00d768f294770e5fa8b57bc6bc9c7d0892ba24f1aa2db0d60d3357dfec`  
		Last Modified: Fri, 16 Nov 2018 16:40:24 GMT  
		Size: 43.8 MB (43826886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece63093428e1568991412b7665e1c3cadf43650144b48f2520b5447810a7e04`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7399ee251195f41dcce446eff68137aa18b94ed1638e70358037a83c55e8bbfb`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.62-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7152545d060218142f672096e56966fb927f034c3f949be751c281b393054fba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112298629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16322f5e8497c673cff74fbc6f7c50df67eb5060848a02c995fe7a09f9c1b6cf`
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
# Fri, 16 Nov 2018 13:00:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 13:00:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 13:02:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:02:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 13:02:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 13:02:06 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 13:02:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 13:02:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 13:03:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 13:03:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 13:03:13 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 13:03:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 13:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 13:03:18 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 13:03:20 GMT
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
	-	`sha256:99188a811aa80ac694ad6a6d6e7ac52bcb67b6158579a5b7ac92a6c1ae80fee5`  
		Last Modified: Fri, 16 Nov 2018 13:12:12 GMT  
		Size: 1.5 MB (1545282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37463a1aa689bdfbe3c088fb0f854355bf7b3845208ddb57fc4564d3b54e665`  
		Last Modified: Fri, 16 Nov 2018 13:12:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648d26175601a0243eb227b4d4264fba48ad17509769f9ea520ea3954ef61210`  
		Last Modified: Fri, 16 Nov 2018 13:12:16 GMT  
		Size: 4.7 MB (4708839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295344094947e717bf7dd21a71b9eba929acccc2e5747e541128104124845081`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4990f6a52792723473a3727efc068d8a6580da2d5f5637f28c42968894da8a`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6410b58ff890c010b4ae54d17e96096d900e80a5dce692205a9ec53ae321d`  
		Last Modified: Fri, 16 Nov 2018 13:12:20 GMT  
		Size: 36.2 MB (36188255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df7c9e141902060b6fe3fc73871d4136f5a49df235d33526007b44501035b6f`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44558a02148c23fb81f891c60172830f25b70c28f1d62c6be7593c4afa9139d0`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:4e1a39d6d101e8cb9d82ea6d57a0eb80e376627ba30960f594453950bcf3d10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:9f746550847e7b1866eb50b60a89a8edb6a87c8c9ac755a17d748be90b5a720b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfff0af4a5e658de7f77c3be23b1ebbb13f4ce7cdfe2f8c227aa00a46a25b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:31:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:31:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:31:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:31:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:31:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:32:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:32:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:32:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:32:06 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Nov 2018 22:32:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 19 Nov 2018 22:32:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:32:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:32:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:32:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:32:48 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:32:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc51790586f266ebd5f770f10c4774f594ba0efe561f4e3b6295bde0069a6c`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722c8e90ccfa0a5f5678c676450d09ed9a555a9c2c5922f305bacc2b1d160e6f`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de3786144ebd1d638f4e8d135dcdb58209b7e9d340f6440165e6027ed33e1ac`  
		Last Modified: Mon, 19 Nov 2018 22:42:44 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f79c4a8ff73c32f4dffff0e3f16a4dc73b7425a66df5dc8ebaf245923b1220`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7237eecc6769b943cdb6254823f729d3089f01e69359ca2cac9919dfd913`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 4.3 MB (4262388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9934140415a09be381907148f29fdb7ef752d11ac697684ae49d45f267537`  
		Last Modified: Mon, 19 Nov 2018 22:42:41 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bba30bb0a8865bcd3133cf480d8c9b3bf55d20a962795385f79891f31a26215`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24935139caaece9e29db1409fe6d4ae0522c08dae7a96debb780595907fd9ec`  
		Last Modified: Mon, 19 Nov 2018 22:42:50 GMT  
		Size: 45.3 MB (45276172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490ae42386de2da2dbe14672c6c1952166b8d0a9fc6cfa07711a464433dd923`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd43062bc53fb92a58eb6316d7d4810e10c6a2f24f51fedee46bcbaa10d9f11b`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:8153ebfec1b54053aa9ee5245f13f5b0174f7041c287fee381bd310f16b1c98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114970916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07e5b05adb031c76a4d47d3ab41cf9b982ea488b23501ccb17dc9ca8b9d83f3`
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
# Fri, 16 Nov 2018 16:36:25 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:36:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:36:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 16:36:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:37:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:37:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:37:29 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:37:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:37:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:37:31 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:37:31 GMT
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
	-	`sha256:490964ffd3c626c7149d24c4c06dec3b829c5910f5737cac62772958f069301e`  
		Last Modified: Fri, 16 Nov 2018 16:40:06 GMT  
		Size: 1.6 MB (1552188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4aa3a1540c9245ac26c3c19b3bc5417ddc75a540fe9c3e0a462847e892652e`  
		Last Modified: Fri, 16 Nov 2018 16:40:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c88c554abc9c524005b93dc7c544017aa68b1f9169c258d569b82889fefd62`  
		Last Modified: Fri, 16 Nov 2018 16:40:08 GMT  
		Size: 4.7 MB (4667945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64c0c135bceab2e23751643c820ab0753f7aec50a7eaf680578ac78e4539dd7`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43087cad1216cfea673a5fa5b9501a438eab9fdbc233d86f252de95079e94d3`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d75b00d768f294770e5fa8b57bc6bc9c7d0892ba24f1aa2db0d60d3357dfec`  
		Last Modified: Fri, 16 Nov 2018 16:40:24 GMT  
		Size: 43.8 MB (43826886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece63093428e1568991412b7665e1c3cadf43650144b48f2520b5447810a7e04`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7399ee251195f41dcce446eff68137aa18b94ed1638e70358037a83c55e8bbfb`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7152545d060218142f672096e56966fb927f034c3f949be751c281b393054fba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112298629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16322f5e8497c673cff74fbc6f7c50df67eb5060848a02c995fe7a09f9c1b6cf`
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
# Fri, 16 Nov 2018 13:00:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 13:00:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 13:02:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:02:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 13:02:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 13:02:06 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 13:02:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 13:02:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 13:03:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 13:03:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 13:03:13 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 13:03:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 13:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 13:03:18 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 13:03:20 GMT
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
	-	`sha256:99188a811aa80ac694ad6a6d6e7ac52bcb67b6158579a5b7ac92a6c1ae80fee5`  
		Last Modified: Fri, 16 Nov 2018 13:12:12 GMT  
		Size: 1.5 MB (1545282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37463a1aa689bdfbe3c088fb0f854355bf7b3845208ddb57fc4564d3b54e665`  
		Last Modified: Fri, 16 Nov 2018 13:12:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648d26175601a0243eb227b4d4264fba48ad17509769f9ea520ea3954ef61210`  
		Last Modified: Fri, 16 Nov 2018 13:12:16 GMT  
		Size: 4.7 MB (4708839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295344094947e717bf7dd21a71b9eba929acccc2e5747e541128104124845081`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4990f6a52792723473a3727efc068d8a6580da2d5f5637f28c42968894da8a`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6410b58ff890c010b4ae54d17e96096d900e80a5dce692205a9ec53ae321d`  
		Last Modified: Fri, 16 Nov 2018 13:12:20 GMT  
		Size: 36.2 MB (36188255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df7c9e141902060b6fe3fc73871d4136f5a49df235d33526007b44501035b6f`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44558a02148c23fb81f891c60172830f25b70c28f1d62c6be7593c4afa9139d0`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:4e1a39d6d101e8cb9d82ea6d57a0eb80e376627ba30960f594453950bcf3d10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:9f746550847e7b1866eb50b60a89a8edb6a87c8c9ac755a17d748be90b5a720b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118363938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfff0af4a5e658de7f77c3be23b1ebbb13f4ce7cdfe2f8c227aa00a46a25b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:31:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:31:26 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:31:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:31:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:31:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:32:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:32:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:32:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:32:06 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Nov 2018 22:32:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Mon, 19 Nov 2018 22:32:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:32:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:32:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:32:33 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:32:48 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:32:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc51790586f266ebd5f770f10c4774f594ba0efe561f4e3b6295bde0069a6c`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722c8e90ccfa0a5f5678c676450d09ed9a555a9c2c5922f305bacc2b1d160e6f`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de3786144ebd1d638f4e8d135dcdb58209b7e9d340f6440165e6027ed33e1ac`  
		Last Modified: Mon, 19 Nov 2018 22:42:44 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f79c4a8ff73c32f4dffff0e3f16a4dc73b7425a66df5dc8ebaf245923b1220`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bf7237eecc6769b943cdb6254823f729d3089f01e69359ca2cac9919dfd913`  
		Last Modified: Mon, 19 Nov 2018 22:42:43 GMT  
		Size: 4.3 MB (4262388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed9934140415a09be381907148f29fdb7ef752d11ac697684ae49d45f267537`  
		Last Modified: Mon, 19 Nov 2018 22:42:41 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bba30bb0a8865bcd3133cf480d8c9b3bf55d20a962795385f79891f31a26215`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24935139caaece9e29db1409fe6d4ae0522c08dae7a96debb780595907fd9ec`  
		Last Modified: Mon, 19 Nov 2018 22:42:50 GMT  
		Size: 45.3 MB (45276172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490ae42386de2da2dbe14672c6c1952166b8d0a9fc6cfa07711a464433dd923`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd43062bc53fb92a58eb6316d7d4810e10c6a2f24f51fedee46bcbaa10d9f11b`  
		Last Modified: Mon, 19 Nov 2018 22:42:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:8153ebfec1b54053aa9ee5245f13f5b0174f7041c287fee381bd310f16b1c98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114970916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07e5b05adb031c76a4d47d3ab41cf9b982ea488b23501ccb17dc9ca8b9d83f3`
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
# Fri, 16 Nov 2018 16:36:25 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:36:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 16:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:36:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 16:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 16:36:58 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 16:36:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 16:37:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 16:37:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 16:37:29 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:37:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 16:37:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:37:31 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 16:37:31 GMT
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
	-	`sha256:490964ffd3c626c7149d24c4c06dec3b829c5910f5737cac62772958f069301e`  
		Last Modified: Fri, 16 Nov 2018 16:40:06 GMT  
		Size: 1.6 MB (1552188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4aa3a1540c9245ac26c3c19b3bc5417ddc75a540fe9c3e0a462847e892652e`  
		Last Modified: Fri, 16 Nov 2018 16:40:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c88c554abc9c524005b93dc7c544017aa68b1f9169c258d569b82889fefd62`  
		Last Modified: Fri, 16 Nov 2018 16:40:08 GMT  
		Size: 4.7 MB (4667945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64c0c135bceab2e23751643c820ab0753f7aec50a7eaf680578ac78e4539dd7`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43087cad1216cfea673a5fa5b9501a438eab9fdbc233d86f252de95079e94d3`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d75b00d768f294770e5fa8b57bc6bc9c7d0892ba24f1aa2db0d60d3357dfec`  
		Last Modified: Fri, 16 Nov 2018 16:40:24 GMT  
		Size: 43.8 MB (43826886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece63093428e1568991412b7665e1c3cadf43650144b48f2520b5447810a7e04`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7399ee251195f41dcce446eff68137aa18b94ed1638e70358037a83c55e8bbfb`  
		Last Modified: Fri, 16 Nov 2018 16:40:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7152545d060218142f672096e56966fb927f034c3f949be751c281b393054fba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112298629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16322f5e8497c673cff74fbc6f7c50df67eb5060848a02c995fe7a09f9c1b6cf`
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
# Fri, 16 Nov 2018 13:00:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 13:00:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 13:02:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:02:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 13:02:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 13:02:06 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Nov 2018 13:02:07 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Fri, 16 Nov 2018 13:02:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 13:03:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 13:03:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 13:03:13 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 13:03:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 13:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 13:03:18 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 13:03:20 GMT
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
	-	`sha256:99188a811aa80ac694ad6a6d6e7ac52bcb67b6158579a5b7ac92a6c1ae80fee5`  
		Last Modified: Fri, 16 Nov 2018 13:12:12 GMT  
		Size: 1.5 MB (1545282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37463a1aa689bdfbe3c088fb0f854355bf7b3845208ddb57fc4564d3b54e665`  
		Last Modified: Fri, 16 Nov 2018 13:12:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648d26175601a0243eb227b4d4264fba48ad17509769f9ea520ea3954ef61210`  
		Last Modified: Fri, 16 Nov 2018 13:12:16 GMT  
		Size: 4.7 MB (4708839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295344094947e717bf7dd21a71b9eba929acccc2e5747e541128104124845081`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 25.1 KB (25135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4990f6a52792723473a3727efc068d8a6580da2d5f5637f28c42968894da8a`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6410b58ff890c010b4ae54d17e96096d900e80a5dce692205a9ec53ae321d`  
		Last Modified: Fri, 16 Nov 2018 13:12:20 GMT  
		Size: 36.2 MB (36188255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df7c9e141902060b6fe3fc73871d4136f5a49df235d33526007b44501035b6f`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44558a02148c23fb81f891c60172830f25b70c28f1d62c6be7593c4afa9139d0`  
		Last Modified: Fri, 16 Nov 2018 13:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:2dbdd168c07b3817df9b3088ef1b6072325e65569ab543b9142d1ae82cb08d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a5a80015bbba8daeb1e9820a7822c4f4107bd59391e24368ab2a4d99c64660ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115014012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f030c8f4efcc5940b1a3d29c5815a72fdf4c68865ced3bf6733f2b50fb6a4450`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:24:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Nov 2018 22:24:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 22:24:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 19 Nov 2018 22:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Nov 2018 22:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:24:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 19 Nov 2018 22:24:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 19 Nov 2018 22:25:49 GMT
ENV MARIADB_MAJOR=10.3
# Mon, 19 Nov 2018 22:25:50 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Mon, 19 Nov 2018 22:25:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Nov 2018 22:26:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 19 Nov 2018 22:26:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Nov 2018 22:26:16 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Mon, 19 Nov 2018 22:26:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Nov 2018 22:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 22:26:18 GMT
EXPOSE 3306/tcp
# Mon, 19 Nov 2018 22:26:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2434d5c8419b875245d80215d555c6b3fb367c6d0bf0350502576a3a1a5f8dc`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181debc3d23d7109bb154619bcb31c59f6d67d821a32ca3c2c922e336c44b174`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 4.8 MB (4803755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5b2b6de4ee59875d2367afcd919733c3b0eb606f2d3a984b03885205679cb4`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 863.2 KB (863174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f830a8cb936d67da9b053c53426968d4948462ace217019d7e46b9ba25e77d2`  
		Last Modified: Mon, 19 Nov 2018 22:33:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6becfb2537154288b0dec1cb2e86cbc346f3f1da52bbf93d787f48725fc31c8`  
		Last Modified: Mon, 19 Nov 2018 22:33:18 GMT  
		Size: 3.0 MB (2956869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57998e3e98d0457a11d4de14ca7c8b0f61dc6223d9f5e15ec395339e6f29377`  
		Last Modified: Mon, 19 Nov 2018 22:33:16 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9916314a1d85ce6ef7e94d8459cdf1971fade7d4ec12856eef5d00bf145c6a`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed4bbba52deb41777f9728b2dec9def332ebdc0dac89601d2cd2e55e09ce7`  
		Last Modified: Mon, 19 Nov 2018 22:35:02 GMT  
		Size: 74.3 MB (74256134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f2a29c99a6cc27bf64b264b6a39aaedc7e6c66d64c8d6e0317cea0df3cd6a2`  
		Last Modified: Mon, 19 Nov 2018 22:34:46 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a003e0ca99e5c8976dd3fa2194dfd008142d860e5c9c7c1991c4c8e1a72c6918`  
		Last Modified: Mon, 19 Nov 2018 22:34:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7b83470957763818550700a46bbacdfd9e74bfca2603fe8e2ab98b76f99529ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109980829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0f2a5499591c76400315b1a6d16d579a8beda6088700b05b3ebbc45aceade7`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:40:58 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 11:40:59 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 11:41:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:42:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:42:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:42:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:42:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:42:30 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:42:31 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67f96cd05b73be4913eccb0cff841b0dec56727d5957598efcd56325f156f1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b904acfa80859eb6c805a2c4913724deba5023e3bf0e956513c491d63c7ccd7`  
		Last Modified: Fri, 16 Nov 2018 11:56:31 GMT  
		Size: 73.2 MB (73207249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf9affdb740eabe8b8dc51a0a5211f5676fb4646a665cb2ea47ae2a9f4c7013`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab703cb6faa3032c430ecfdc1f36bdb255da06db4c0208f17be7de1c0af39a1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3a12ec74c3546fe1a4275e99f88e29d8c5d5f831cbd5995ca51c5a69deeb5b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc268ec093744bd089c9fe7f109f8cb6d6149b82e5d75e29d00d83d01d87ab8e`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:48:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 12:48:17 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 12:48:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:49:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:49:54 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:49:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:50:01 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:50:02 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f48891567107c4c5d4dd03493824c42fa16d6536970e94bccd7b26d2de6c19`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15408124ea4e6669572e6e8610b874418f1b6ca6ab3432fb30462b67b3579c91`  
		Last Modified: Fri, 16 Nov 2018 13:05:56 GMT  
		Size: 77.2 MB (77188880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1742667d70c3f6f27db7c8af7a87fab346b064800a180a56dff0192e57d1cf14`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27810f98d58b7f0e97785304abf0298b0058d8d94f9ccc4b2f9466e39575fdc4`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:5c5f70ec8fadf873b154e86af15cd91d88f6ad01c45ac43308d73a2dcfd70614
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
$ docker pull mariadb@sha256:7b83470957763818550700a46bbacdfd9e74bfca2603fe8e2ab98b76f99529ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109980829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0f2a5499591c76400315b1a6d16d579a8beda6088700b05b3ebbc45aceade7`
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
# Fri, 16 Nov 2018 11:38:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 11:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 11:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:39:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 11:39:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 11:40:58 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 11:40:59 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 11:41:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 11:42:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 11:42:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 11:42:27 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:42:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 11:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 11:42:30 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 11:42:31 GMT
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
	-	`sha256:5a2dda1c8dc58559402065f1426d8ef5853d7d41e8cdef6e749051504652597c`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 829.7 KB (829718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc2f0a6499e3a1c120fa4e950e6ec362f2d949b5c33d0493170a8e2454ca31`  
		Last Modified: Fri, 16 Nov 2018 11:53:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe2649cdc15af4802e913b0ff36a2d40253c0a7ddbf2d6545f63d2d66e431e`  
		Last Modified: Fri, 16 Nov 2018 11:53:35 GMT  
		Size: 2.7 MB (2698569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1699c72d5b07b3bff108b30c581096bf2b4086992b6856af2aad32226eaee72c`  
		Last Modified: Fri, 16 Nov 2018 11:53:31 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a67f96cd05b73be4913eccb0cff841b0dec56727d5957598efcd56325f156f1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b904acfa80859eb6c805a2c4913724deba5023e3bf0e956513c491d63c7ccd7`  
		Last Modified: Fri, 16 Nov 2018 11:56:31 GMT  
		Size: 73.2 MB (73207249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf9affdb740eabe8b8dc51a0a5211f5676fb4646a665cb2ea47ae2a9f4c7013`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 2.7 KB (2694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab703cb6faa3032c430ecfdc1f36bdb255da06db4c0208f17be7de1c0af39a1`  
		Last Modified: Fri, 16 Nov 2018 11:55:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3a12ec74c3546fe1a4275e99f88e29d8c5d5f831cbd5995ca51c5a69deeb5b4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121966885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc268ec093744bd089c9fe7f109f8cb6d6149b82e5d75e29d00d83d01d87ab8e`
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
# Fri, 16 Nov 2018 12:45:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 12:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 12:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:45:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 16 Nov 2018 12:46:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 12:48:15 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 16 Nov 2018 12:48:17 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 16 Nov 2018 12:48:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Nov 2018 12:49:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 12:49:54 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 12:49:57 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Fri, 16 Nov 2018 12:49:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Nov 2018 12:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 12:50:01 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 12:50:02 GMT
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
	-	`sha256:2e374837a539412d3260b4013c73ca7deff0e9dba5f31a9f5bd56c83c94104a0`  
		Last Modified: Fri, 16 Nov 2018 13:04:04 GMT  
		Size: 831.6 KB (831574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d5388accb95f0ce11b758a50477d40b6a009b1a27397334b44fe24480b81ec`  
		Last Modified: Fri, 16 Nov 2018 13:04:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d67b792032ce8a59f41ee0920dbc0155999c8122a445ef1807cebee9567a27`  
		Last Modified: Fri, 16 Nov 2018 13:04:05 GMT  
		Size: 2.8 MB (2838879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5649ea7757b10e05623df2d0bbff24c8ccf75898cfd4548b1e263dcbb4733261`  
		Last Modified: Fri, 16 Nov 2018 13:04:00 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f48891567107c4c5d4dd03493824c42fa16d6536970e94bccd7b26d2de6c19`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15408124ea4e6669572e6e8610b874418f1b6ca6ab3432fb30462b67b3579c91`  
		Last Modified: Fri, 16 Nov 2018 13:05:56 GMT  
		Size: 77.2 MB (77188880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1742667d70c3f6f27db7c8af7a87fab346b064800a180a56dff0192e57d1cf14`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27810f98d58b7f0e97785304abf0298b0058d8d94f9ccc4b2f9466e39575fdc4`  
		Last Modified: Fri, 16 Nov 2018 13:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
