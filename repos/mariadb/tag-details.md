<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.36`](#mariadb10036)
-	[`mariadb:10.0.36-xenial`](#mariadb10036-xenial)
-	[`mariadb:10.0-xenial`](#mariadb100-xenial)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.35`](#mariadb10135)
-	[`mariadb:10.1.35-bionic`](#mariadb10135-bionic)
-	[`mariadb:10.1-bionic`](#mariadb101-bionic)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.17`](#mariadb10217)
-	[`mariadb:10.2.17-bionic`](#mariadb10217-bionic)
-	[`mariadb:10.2-bionic`](#mariadb102-bionic)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.9`](#mariadb1039)
-	[`mariadb:10.3.9-bionic`](#mariadb1039-bionic)
-	[`mariadb:10.3-bionic`](#mariadb103-bionic)
-	[`mariadb:10-bionic`](#mariadb10-bionic)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.61`](#mariadb5561)
-	[`mariadb:5.5.61-trusty`](#mariadb5561-trusty)
-	[`mariadb:5.5-trusty`](#mariadb55-trusty)
-	[`mariadb:5-trusty`](#mariadb5-trusty)
-	[`mariadb:bionic`](#mariadbbionic)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:33b7d6222348a0a1e7a7753ee65f6e1658deb500b1c096b45547a16dd2b57fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:cce5e3d65345652b722fec8ce0d85650f31da78ee4815c764450092848bddaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d4ebaca2a6cf4679676608529c4700542d455d8e5767f6d160078a43eb62f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 22 Aug 2018 18:37:17 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:38:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:38:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:38:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:38:22 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:38:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c561989800a27eeb09e3f45eaf69c75773ef00dbbed1db536e2709da03f9805`  
		Last Modified: Wed, 22 Aug 2018 18:45:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ffda50aea95315e6a82269e8a3cf616793369e22d744a3df9f4d344278838b`  
		Last Modified: Wed, 22 Aug 2018 18:45:30 GMT  
		Size: 74.2 MB (74183544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7acb6945c1cae78b915564b46ccfa59c0e7c2aace175efaf7b1fb51c392a1d`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03680e4e0d7c6d9b8b90aab89ffb4690fa966036400e106a88fe54bd6e760180`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cb273c8df5f23a9950a26a63720791449cd5fc2f1caf2cc5db78ccfddc66c67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109554942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deb23c447058ce2e302d24f4fb17b2b36919b07640608a4decc548708152ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:30:07 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 17 Aug 2018 08:58:59 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Fri, 17 Aug 2018 08:59:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:00:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:00:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:00:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:00:46 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:00:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a60edd2028711f0e81bf91f71fb20e9416560ee8de076e235d30db34c3e56`  
		Last Modified: Fri, 17 Aug 2018 09:04:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c350c862a6f4ec47d6c15583253e3506df1e5ff5d6da2e7fa26265d8012a660e`  
		Last Modified: Fri, 17 Aug 2018 09:04:58 GMT  
		Size: 73.1 MB (73072302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae0467666f66a0d95b25a5e7079e73433e11b5f7e50418488d1fc0d2e44e7a`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8935fadb6c36f825c584dcdf689b4104c75d1e73f1a5dd8a0b4a7642715ffe`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:036d3069afbf1ed91c3a7c1665caadec34449a8b826a83b73e4836462a2cabc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121566072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ba75f342a1fbe87d3cbf5280e70a8d796806f8b1c2a923ed6b3924ff23e21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:30:50 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 21 Aug 2018 18:30:51 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Tue, 21 Aug 2018 18:30:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:32:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:32:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:32:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:32:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:32:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:32:25 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:32:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1463ba7afc343529ca6ddc18a466919ff7198090afdca60327327347d3b678`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6a2ec4235a7c8af3bbbb555c589fb77a4c732f6df00b8c6310a17104a0784e`  
		Last Modified: Tue, 21 Aug 2018 18:42:53 GMT  
		Size: 77.1 MB (77085251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934574fdd3d8eef172037bca672b0b67b297ff789e172b05aeb1bdd9b131ebb`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791da7fe722358b4459f4bee42503c0c8d273066a213aed674f97f39f785c3b2`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:7197097672d75cd799df4af69bc63a9c4a87de9dee591ad051c7f56f3cac2b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:d6395fe73ed99186a0c2c1487eb5ba7ad682f82fddb1ba040984016ffa657f1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9361cccc784e3f6e65724a21ffc309ddeaca0fa200d5f8aabf9681cf265a95ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:41:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:41:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:41:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:41:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:41:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:41:55 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:41:57 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 22 Aug 2018 18:41:58 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Wed, 22 Aug 2018 18:41:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:42:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:42:49 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:42:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:42:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:42:51 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:42:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06c242e233f9651fe8868bb04c2903693774bded1b213827f76bb1461f8df0`  
		Last Modified: Wed, 22 Aug 2018 18:52:55 GMT  
		Size: 2.0 KB (1989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38408c11220f88a9cf565d5225c8f79ab8ee4c515bfc22676a29a7018ee18dd7`  
		Last Modified: Wed, 22 Aug 2018 18:52:54 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24974e5c360a8a3dfa8bca8dfe32fd7a24046cc1ce5e86ece110991bf491ba74`  
		Last Modified: Wed, 22 Aug 2018 18:52:53 GMT  
		Size: 840.4 KB (840397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aeb6478a62db6347fade8386b853a2e7c52da5722ae200f775489dd580f215`  
		Last Modified: Wed, 22 Aug 2018 18:52:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea77ff672b47c0bfec72c6235f30531f367e33a3c805fcec6bb6aa34637c0b1`  
		Last Modified: Wed, 22 Aug 2018 18:52:55 GMT  
		Size: 7.3 MB (7319374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c27325cd09c974aa9095d0e6357c0a8389e1c44f21768832de56ed4c8a8f45c`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee4e3af7366892d50f9986bb8bab54f5882de527b29969c35591218fb935ae`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe829254d8be70d68cbe52bf70561f926fb97167df149e9545e67a405e9d177`  
		Last Modified: Wed, 22 Aug 2018 18:53:14 GMT  
		Size: 63.3 MB (63347289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de70416a1a14de190a3701d16ecd7c6b717a038d29cb35045ae64225be0bf59`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89bafeb38e76c2e1b738be43c7d8baa6b71d77c4f2fcd242254e1ee9e1ac8fd`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:a004235faeaa261aba906e9613a8d4de320fbdb65d7c4c5341352132d7221450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113724613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43448b69ec748790eb3f6bdf788de15e4d2544951c73c64f1d07baf0e4902631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:51:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 11:51:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:51:11 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 11:51:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 11:51:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 11:51:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:51:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 11:51:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 11:51:59 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 03 Aug 2018 11:25:50 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 03 Aug 2018 11:25:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:27:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:27:21 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:27:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:27:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:27:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:27:23 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a472c3de548f6828ec3540e7205e92b18d3bd2dfa79f59d7867e129d9a9741ab`  
		Last Modified: Fri, 27 Jul 2018 11:54:03 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a34e3504536d335f028cdf7d49cda50aea1638614ecddb1a49c1addfe7f9c21`  
		Last Modified: Fri, 27 Jul 2018 11:54:00 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543603daefcbab57430a05231002ba082d089fe643c2e5d13592d2196db351d6`  
		Last Modified: Fri, 27 Jul 2018 11:54:00 GMT  
		Size: 819.4 KB (819424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed0a8b04bbf78a12f7dd6d4e561a192358a4e2996437442e08f5e64c0ce2e2a`  
		Last Modified: Fri, 27 Jul 2018 11:53:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271f2d940d403b91d6537b2e8f4c0ba0bd7e68eaca24fe5574cd43161fb7054f`  
		Last Modified: Fri, 27 Jul 2018 11:54:03 GMT  
		Size: 7.4 MB (7447236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65cddb306ca510797877ccbcb71851878fc1d961cd154b82c67d5ea109163b8`  
		Last Modified: Fri, 27 Jul 2018 11:53:57 GMT  
		Size: 25.1 KB (25130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4647257297c965162f46ec1a7c4869ed6404d205e8e949296a3f20e5ba8f4f3`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9c6171fcf66553d3e68dc22ce4ee76e3b5b564dc4b73921cc09ee246f5a8`  
		Last Modified: Fri, 03 Aug 2018 11:29:50 GMT  
		Size: 61.9 MB (61926975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7741fca9b4b8a0150c7b1f4787f1e0206b66841185daee2ea67e35dd91e05ec`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53882fe5433a6c969f495d9f7d856299f1b89e980057a5e79384401feab145c`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:d37619eb1522a872162007ac1f641353bb9c5114b7340ab35d2f98a415869077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108215009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25eb870d50cb15ade6000f3e55fb08c6de8f1f1669a6c04e384fabe39f027bf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:37:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:37:37 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:37:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:38:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:38:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:39:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:39:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:39:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:39:54 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 21 Aug 2018 18:39:55 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Tue, 21 Aug 2018 18:39:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:41:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:41:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:41:52 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:41:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:41:56 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:41:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c73238cdaa350023db45ebe4695913525fe243b67fc5766563303b5676947f`  
		Last Modified: Tue, 21 Aug 2018 18:45:55 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85256d35abee4905ffdc148ee317f7286787318a39424dcfd248334f5fc3cf1a`  
		Last Modified: Tue, 21 Aug 2018 18:45:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc509e3129630404fb47dbe6ffcd2e2615e702f7d0f313509c832966bc494ed9`  
		Last Modified: Tue, 21 Aug 2018 18:45:53 GMT  
		Size: 808.8 KB (808781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c055c1d10a1b5e4c05b7c981f8bf9fe1cbfbcf2b2c68ee8265df8f73d9ae4`  
		Last Modified: Tue, 21 Aug 2018 18:45:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afdf512b1bc43c701ddb08b6ef1ce7c10a86a5c04e88555e4fadb31fda9fb2f`  
		Last Modified: Tue, 21 Aug 2018 18:45:55 GMT  
		Size: 7.2 MB (7209312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90a3e82f6870968eaeb707328c80c7fce930f1bf9c07b28432b873468d55a32`  
		Last Modified: Tue, 21 Aug 2018 18:45:50 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b01320427addbbde5ac56400f829865876e6fac8ff4736ee189e1e009110202`  
		Last Modified: Tue, 21 Aug 2018 18:45:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d0279aea03ac1f2c7adf6d8abf4650c80ef48f0fcda87ab1056decc2ab4411`  
		Last Modified: Tue, 21 Aug 2018 18:46:05 GMT  
		Size: 54.6 MB (54589575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9dbde52047391c0013e37d166f81bd39994ddd3c3dc17104adbc3ffa34bed6`  
		Last Modified: Tue, 21 Aug 2018 18:45:50 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f828d71de860b9bfb9268e93f50b1351476f4f74912fb943e508a56c97e85ec`  
		Last Modified: Tue, 21 Aug 2018 18:45:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.36`

```console
$ docker pull mariadb@sha256:7197097672d75cd799df4af69bc63a9c4a87de9dee591ad051c7f56f3cac2b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.36` - linux; amd64

```console
$ docker pull mariadb@sha256:d6395fe73ed99186a0c2c1487eb5ba7ad682f82fddb1ba040984016ffa657f1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9361cccc784e3f6e65724a21ffc309ddeaca0fa200d5f8aabf9681cf265a95ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:41:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:41:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:41:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:41:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:41:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:41:55 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:41:57 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 22 Aug 2018 18:41:58 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Wed, 22 Aug 2018 18:41:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:42:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:42:49 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:42:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:42:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:42:51 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:42:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06c242e233f9651fe8868bb04c2903693774bded1b213827f76bb1461f8df0`  
		Last Modified: Wed, 22 Aug 2018 18:52:55 GMT  
		Size: 2.0 KB (1989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38408c11220f88a9cf565d5225c8f79ab8ee4c515bfc22676a29a7018ee18dd7`  
		Last Modified: Wed, 22 Aug 2018 18:52:54 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24974e5c360a8a3dfa8bca8dfe32fd7a24046cc1ce5e86ece110991bf491ba74`  
		Last Modified: Wed, 22 Aug 2018 18:52:53 GMT  
		Size: 840.4 KB (840397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aeb6478a62db6347fade8386b853a2e7c52da5722ae200f775489dd580f215`  
		Last Modified: Wed, 22 Aug 2018 18:52:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea77ff672b47c0bfec72c6235f30531f367e33a3c805fcec6bb6aa34637c0b1`  
		Last Modified: Wed, 22 Aug 2018 18:52:55 GMT  
		Size: 7.3 MB (7319374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c27325cd09c974aa9095d0e6357c0a8389e1c44f21768832de56ed4c8a8f45c`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee4e3af7366892d50f9986bb8bab54f5882de527b29969c35591218fb935ae`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe829254d8be70d68cbe52bf70561f926fb97167df149e9545e67a405e9d177`  
		Last Modified: Wed, 22 Aug 2018 18:53:14 GMT  
		Size: 63.3 MB (63347289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de70416a1a14de190a3701d16ecd7c6b717a038d29cb35045ae64225be0bf59`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89bafeb38e76c2e1b738be43c7d8baa6b71d77c4f2fcd242254e1ee9e1ac8fd`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36` - linux; 386

```console
$ docker pull mariadb@sha256:a004235faeaa261aba906e9613a8d4de320fbdb65d7c4c5341352132d7221450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113724613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43448b69ec748790eb3f6bdf788de15e4d2544951c73c64f1d07baf0e4902631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:51:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 11:51:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:51:11 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 11:51:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 11:51:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 11:51:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:51:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 11:51:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 11:51:59 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 03 Aug 2018 11:25:50 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 03 Aug 2018 11:25:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:27:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:27:21 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:27:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:27:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:27:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:27:23 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a472c3de548f6828ec3540e7205e92b18d3bd2dfa79f59d7867e129d9a9741ab`  
		Last Modified: Fri, 27 Jul 2018 11:54:03 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a34e3504536d335f028cdf7d49cda50aea1638614ecddb1a49c1addfe7f9c21`  
		Last Modified: Fri, 27 Jul 2018 11:54:00 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543603daefcbab57430a05231002ba082d089fe643c2e5d13592d2196db351d6`  
		Last Modified: Fri, 27 Jul 2018 11:54:00 GMT  
		Size: 819.4 KB (819424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed0a8b04bbf78a12f7dd6d4e561a192358a4e2996437442e08f5e64c0ce2e2a`  
		Last Modified: Fri, 27 Jul 2018 11:53:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271f2d940d403b91d6537b2e8f4c0ba0bd7e68eaca24fe5574cd43161fb7054f`  
		Last Modified: Fri, 27 Jul 2018 11:54:03 GMT  
		Size: 7.4 MB (7447236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65cddb306ca510797877ccbcb71851878fc1d961cd154b82c67d5ea109163b8`  
		Last Modified: Fri, 27 Jul 2018 11:53:57 GMT  
		Size: 25.1 KB (25130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4647257297c965162f46ec1a7c4869ed6404d205e8e949296a3f20e5ba8f4f3`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9c6171fcf66553d3e68dc22ce4ee76e3b5b564dc4b73921cc09ee246f5a8`  
		Last Modified: Fri, 03 Aug 2018 11:29:50 GMT  
		Size: 61.9 MB (61926975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7741fca9b4b8a0150c7b1f4787f1e0206b66841185daee2ea67e35dd91e05ec`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53882fe5433a6c969f495d9f7d856299f1b89e980057a5e79384401feab145c`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36` - linux; ppc64le

```console
$ docker pull mariadb@sha256:d37619eb1522a872162007ac1f641353bb9c5114b7340ab35d2f98a415869077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108215009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25eb870d50cb15ade6000f3e55fb08c6de8f1f1669a6c04e384fabe39f027bf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:37:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:37:37 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:37:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:38:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:38:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:39:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:39:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:39:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:39:54 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 21 Aug 2018 18:39:55 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Tue, 21 Aug 2018 18:39:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:41:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:41:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:41:52 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:41:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:41:56 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:41:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c73238cdaa350023db45ebe4695913525fe243b67fc5766563303b5676947f`  
		Last Modified: Tue, 21 Aug 2018 18:45:55 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85256d35abee4905ffdc148ee317f7286787318a39424dcfd248334f5fc3cf1a`  
		Last Modified: Tue, 21 Aug 2018 18:45:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc509e3129630404fb47dbe6ffcd2e2615e702f7d0f313509c832966bc494ed9`  
		Last Modified: Tue, 21 Aug 2018 18:45:53 GMT  
		Size: 808.8 KB (808781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c055c1d10a1b5e4c05b7c981f8bf9fe1cbfbcf2b2c68ee8265df8f73d9ae4`  
		Last Modified: Tue, 21 Aug 2018 18:45:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afdf512b1bc43c701ddb08b6ef1ce7c10a86a5c04e88555e4fadb31fda9fb2f`  
		Last Modified: Tue, 21 Aug 2018 18:45:55 GMT  
		Size: 7.2 MB (7209312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90a3e82f6870968eaeb707328c80c7fce930f1bf9c07b28432b873468d55a32`  
		Last Modified: Tue, 21 Aug 2018 18:45:50 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b01320427addbbde5ac56400f829865876e6fac8ff4736ee189e1e009110202`  
		Last Modified: Tue, 21 Aug 2018 18:45:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d0279aea03ac1f2c7adf6d8abf4650c80ef48f0fcda87ab1056decc2ab4411`  
		Last Modified: Tue, 21 Aug 2018 18:46:05 GMT  
		Size: 54.6 MB (54589575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9dbde52047391c0013e37d166f81bd39994ddd3c3dc17104adbc3ffa34bed6`  
		Last Modified: Tue, 21 Aug 2018 18:45:50 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f828d71de860b9bfb9268e93f50b1351476f4f74912fb943e508a56c97e85ec`  
		Last Modified: Tue, 21 Aug 2018 18:45:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.36-xenial`

```console
$ docker pull mariadb@sha256:7197097672d75cd799df4af69bc63a9c4a87de9dee591ad051c7f56f3cac2b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.36-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:d6395fe73ed99186a0c2c1487eb5ba7ad682f82fddb1ba040984016ffa657f1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9361cccc784e3f6e65724a21ffc309ddeaca0fa200d5f8aabf9681cf265a95ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:41:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:41:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:41:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:41:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:41:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:41:55 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:41:57 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 22 Aug 2018 18:41:58 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Wed, 22 Aug 2018 18:41:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:42:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:42:49 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:42:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:42:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:42:51 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:42:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06c242e233f9651fe8868bb04c2903693774bded1b213827f76bb1461f8df0`  
		Last Modified: Wed, 22 Aug 2018 18:52:55 GMT  
		Size: 2.0 KB (1989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38408c11220f88a9cf565d5225c8f79ab8ee4c515bfc22676a29a7018ee18dd7`  
		Last Modified: Wed, 22 Aug 2018 18:52:54 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24974e5c360a8a3dfa8bca8dfe32fd7a24046cc1ce5e86ece110991bf491ba74`  
		Last Modified: Wed, 22 Aug 2018 18:52:53 GMT  
		Size: 840.4 KB (840397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aeb6478a62db6347fade8386b853a2e7c52da5722ae200f775489dd580f215`  
		Last Modified: Wed, 22 Aug 2018 18:52:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea77ff672b47c0bfec72c6235f30531f367e33a3c805fcec6bb6aa34637c0b1`  
		Last Modified: Wed, 22 Aug 2018 18:52:55 GMT  
		Size: 7.3 MB (7319374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c27325cd09c974aa9095d0e6357c0a8389e1c44f21768832de56ed4c8a8f45c`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee4e3af7366892d50f9986bb8bab54f5882de527b29969c35591218fb935ae`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe829254d8be70d68cbe52bf70561f926fb97167df149e9545e67a405e9d177`  
		Last Modified: Wed, 22 Aug 2018 18:53:14 GMT  
		Size: 63.3 MB (63347289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de70416a1a14de190a3701d16ecd7c6b717a038d29cb35045ae64225be0bf59`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89bafeb38e76c2e1b738be43c7d8baa6b71d77c4f2fcd242254e1ee9e1ac8fd`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:a004235faeaa261aba906e9613a8d4de320fbdb65d7c4c5341352132d7221450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113724613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43448b69ec748790eb3f6bdf788de15e4d2544951c73c64f1d07baf0e4902631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:51:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 11:51:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:51:11 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 11:51:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 11:51:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 11:51:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:51:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 11:51:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 11:51:59 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 03 Aug 2018 11:25:50 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 03 Aug 2018 11:25:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:27:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:27:21 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:27:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:27:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:27:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:27:23 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a472c3de548f6828ec3540e7205e92b18d3bd2dfa79f59d7867e129d9a9741ab`  
		Last Modified: Fri, 27 Jul 2018 11:54:03 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a34e3504536d335f028cdf7d49cda50aea1638614ecddb1a49c1addfe7f9c21`  
		Last Modified: Fri, 27 Jul 2018 11:54:00 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543603daefcbab57430a05231002ba082d089fe643c2e5d13592d2196db351d6`  
		Last Modified: Fri, 27 Jul 2018 11:54:00 GMT  
		Size: 819.4 KB (819424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed0a8b04bbf78a12f7dd6d4e561a192358a4e2996437442e08f5e64c0ce2e2a`  
		Last Modified: Fri, 27 Jul 2018 11:53:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271f2d940d403b91d6537b2e8f4c0ba0bd7e68eaca24fe5574cd43161fb7054f`  
		Last Modified: Fri, 27 Jul 2018 11:54:03 GMT  
		Size: 7.4 MB (7447236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65cddb306ca510797877ccbcb71851878fc1d961cd154b82c67d5ea109163b8`  
		Last Modified: Fri, 27 Jul 2018 11:53:57 GMT  
		Size: 25.1 KB (25130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4647257297c965162f46ec1a7c4869ed6404d205e8e949296a3f20e5ba8f4f3`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9c6171fcf66553d3e68dc22ce4ee76e3b5b564dc4b73921cc09ee246f5a8`  
		Last Modified: Fri, 03 Aug 2018 11:29:50 GMT  
		Size: 61.9 MB (61926975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7741fca9b4b8a0150c7b1f4787f1e0206b66841185daee2ea67e35dd91e05ec`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53882fe5433a6c969f495d9f7d856299f1b89e980057a5e79384401feab145c`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:d37619eb1522a872162007ac1f641353bb9c5114b7340ab35d2f98a415869077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108215009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25eb870d50cb15ade6000f3e55fb08c6de8f1f1669a6c04e384fabe39f027bf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:37:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:37:37 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:37:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:38:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:38:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:39:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:39:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:39:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:39:54 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 21 Aug 2018 18:39:55 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Tue, 21 Aug 2018 18:39:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:41:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:41:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:41:52 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:41:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:41:56 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:41:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c73238cdaa350023db45ebe4695913525fe243b67fc5766563303b5676947f`  
		Last Modified: Tue, 21 Aug 2018 18:45:55 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85256d35abee4905ffdc148ee317f7286787318a39424dcfd248334f5fc3cf1a`  
		Last Modified: Tue, 21 Aug 2018 18:45:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc509e3129630404fb47dbe6ffcd2e2615e702f7d0f313509c832966bc494ed9`  
		Last Modified: Tue, 21 Aug 2018 18:45:53 GMT  
		Size: 808.8 KB (808781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c055c1d10a1b5e4c05b7c981f8bf9fe1cbfbcf2b2c68ee8265df8f73d9ae4`  
		Last Modified: Tue, 21 Aug 2018 18:45:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afdf512b1bc43c701ddb08b6ef1ce7c10a86a5c04e88555e4fadb31fda9fb2f`  
		Last Modified: Tue, 21 Aug 2018 18:45:55 GMT  
		Size: 7.2 MB (7209312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90a3e82f6870968eaeb707328c80c7fce930f1bf9c07b28432b873468d55a32`  
		Last Modified: Tue, 21 Aug 2018 18:45:50 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b01320427addbbde5ac56400f829865876e6fac8ff4736ee189e1e009110202`  
		Last Modified: Tue, 21 Aug 2018 18:45:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d0279aea03ac1f2c7adf6d8abf4650c80ef48f0fcda87ab1056decc2ab4411`  
		Last Modified: Tue, 21 Aug 2018 18:46:05 GMT  
		Size: 54.6 MB (54589575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9dbde52047391c0013e37d166f81bd39994ddd3c3dc17104adbc3ffa34bed6`  
		Last Modified: Tue, 21 Aug 2018 18:45:50 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f828d71de860b9bfb9268e93f50b1351476f4f74912fb943e508a56c97e85ec`  
		Last Modified: Tue, 21 Aug 2018 18:45:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:7197097672d75cd799df4af69bc63a9c4a87de9dee591ad051c7f56f3cac2b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:d6395fe73ed99186a0c2c1487eb5ba7ad682f82fddb1ba040984016ffa657f1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9361cccc784e3f6e65724a21ffc309ddeaca0fa200d5f8aabf9681cf265a95ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:41:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:41:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:41:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:41:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:41:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:41:55 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:41:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:41:57 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 22 Aug 2018 18:41:58 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Wed, 22 Aug 2018 18:41:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:42:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:42:49 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:42:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:42:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:42:51 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:42:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06c242e233f9651fe8868bb04c2903693774bded1b213827f76bb1461f8df0`  
		Last Modified: Wed, 22 Aug 2018 18:52:55 GMT  
		Size: 2.0 KB (1989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38408c11220f88a9cf565d5225c8f79ab8ee4c515bfc22676a29a7018ee18dd7`  
		Last Modified: Wed, 22 Aug 2018 18:52:54 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24974e5c360a8a3dfa8bca8dfe32fd7a24046cc1ce5e86ece110991bf491ba74`  
		Last Modified: Wed, 22 Aug 2018 18:52:53 GMT  
		Size: 840.4 KB (840397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aeb6478a62db6347fade8386b853a2e7c52da5722ae200f775489dd580f215`  
		Last Modified: Wed, 22 Aug 2018 18:52:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea77ff672b47c0bfec72c6235f30531f367e33a3c805fcec6bb6aa34637c0b1`  
		Last Modified: Wed, 22 Aug 2018 18:52:55 GMT  
		Size: 7.3 MB (7319374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c27325cd09c974aa9095d0e6357c0a8389e1c44f21768832de56ed4c8a8f45c`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee4e3af7366892d50f9986bb8bab54f5882de527b29969c35591218fb935ae`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe829254d8be70d68cbe52bf70561f926fb97167df149e9545e67a405e9d177`  
		Last Modified: Wed, 22 Aug 2018 18:53:14 GMT  
		Size: 63.3 MB (63347289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de70416a1a14de190a3701d16ecd7c6b717a038d29cb35045ae64225be0bf59`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89bafeb38e76c2e1b738be43c7d8baa6b71d77c4f2fcd242254e1ee9e1ac8fd`  
		Last Modified: Wed, 22 Aug 2018 18:52:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:a004235faeaa261aba906e9613a8d4de320fbdb65d7c4c5341352132d7221450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113724613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43448b69ec748790eb3f6bdf788de15e4d2544951c73c64f1d07baf0e4902631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 11:04:12 GMT
ADD file:bf213ed5365ee4c9a7f64ec5c337df6779168f609a0fb0ddd2cdf558df419aca in / 
# Fri, 27 Jul 2018 11:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:04:16 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 11:51:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 11:51:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:51:11 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 11:51:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 11:51:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 11:51:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:51:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 11:51:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 11:51:59 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 03 Aug 2018 11:25:50 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 03 Aug 2018 11:25:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:27:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:27:21 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:27:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:27:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:27:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:27:23 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:79c3321cd1db5170b2b17e4e7904e999afc88c5ba9168e6632c722f0ced80f2b`  
		Last Modified: Fri, 27 Jul 2018 11:08:03 GMT  
		Size: 43.5 MB (43498084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc08ce9a961adeec10d1eadfa16bc1cb9d2f8994e5d43432500a75cfaa09c6c`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d8c15b299b1de7aa1b6fb37d83b146c59e520ce7bfc25254544262ca705b48`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97a3925b890b18279fac470160ce2e973a10ef456dce7d174780d4e24550f3`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844083148ae3343326e2b07dc524e55fee4f261a1637e68ac86a32b97c4ce16`  
		Last Modified: Fri, 27 Jul 2018 11:07:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a472c3de548f6828ec3540e7205e92b18d3bd2dfa79f59d7867e129d9a9741ab`  
		Last Modified: Fri, 27 Jul 2018 11:54:03 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a34e3504536d335f028cdf7d49cda50aea1638614ecddb1a49c1addfe7f9c21`  
		Last Modified: Fri, 27 Jul 2018 11:54:00 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543603daefcbab57430a05231002ba082d089fe643c2e5d13592d2196db351d6`  
		Last Modified: Fri, 27 Jul 2018 11:54:00 GMT  
		Size: 819.4 KB (819424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed0a8b04bbf78a12f7dd6d4e561a192358a4e2996437442e08f5e64c0ce2e2a`  
		Last Modified: Fri, 27 Jul 2018 11:53:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271f2d940d403b91d6537b2e8f4c0ba0bd7e68eaca24fe5574cd43161fb7054f`  
		Last Modified: Fri, 27 Jul 2018 11:54:03 GMT  
		Size: 7.4 MB (7447236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65cddb306ca510797877ccbcb71851878fc1d961cd154b82c67d5ea109163b8`  
		Last Modified: Fri, 27 Jul 2018 11:53:57 GMT  
		Size: 25.1 KB (25130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4647257297c965162f46ec1a7c4869ed6404d205e8e949296a3f20e5ba8f4f3`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9c6171fcf66553d3e68dc22ce4ee76e3b5b564dc4b73921cc09ee246f5a8`  
		Last Modified: Fri, 03 Aug 2018 11:29:50 GMT  
		Size: 61.9 MB (61926975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7741fca9b4b8a0150c7b1f4787f1e0206b66841185daee2ea67e35dd91e05ec`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53882fe5433a6c969f495d9f7d856299f1b89e980057a5e79384401feab145c`  
		Last Modified: Fri, 03 Aug 2018 11:29:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:d37619eb1522a872162007ac1f641353bb9c5114b7340ab35d2f98a415869077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108215009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25eb870d50cb15ade6000f3e55fb08c6de8f1f1669a6c04e384fabe39f027bf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:37:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:37:37 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:37:38 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:38:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:38:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:39:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:39:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:39:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:39:54 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 21 Aug 2018 18:39:55 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Tue, 21 Aug 2018 18:39:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:41:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:41:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:41:52 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:41:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:41:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:41:56 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:41:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c73238cdaa350023db45ebe4695913525fe243b67fc5766563303b5676947f`  
		Last Modified: Tue, 21 Aug 2018 18:45:55 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85256d35abee4905ffdc148ee317f7286787318a39424dcfd248334f5fc3cf1a`  
		Last Modified: Tue, 21 Aug 2018 18:45:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc509e3129630404fb47dbe6ffcd2e2615e702f7d0f313509c832966bc494ed9`  
		Last Modified: Tue, 21 Aug 2018 18:45:53 GMT  
		Size: 808.8 KB (808781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c055c1d10a1b5e4c05b7c981f8bf9fe1cbfbcf2b2c68ee8265df8f73d9ae4`  
		Last Modified: Tue, 21 Aug 2018 18:45:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afdf512b1bc43c701ddb08b6ef1ce7c10a86a5c04e88555e4fadb31fda9fb2f`  
		Last Modified: Tue, 21 Aug 2018 18:45:55 GMT  
		Size: 7.2 MB (7209312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90a3e82f6870968eaeb707328c80c7fce930f1bf9c07b28432b873468d55a32`  
		Last Modified: Tue, 21 Aug 2018 18:45:50 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b01320427addbbde5ac56400f829865876e6fac8ff4736ee189e1e009110202`  
		Last Modified: Tue, 21 Aug 2018 18:45:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d0279aea03ac1f2c7adf6d8abf4650c80ef48f0fcda87ab1056decc2ab4411`  
		Last Modified: Tue, 21 Aug 2018 18:46:05 GMT  
		Size: 54.6 MB (54589575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9dbde52047391c0013e37d166f81bd39994ddd3c3dc17104adbc3ffa34bed6`  
		Last Modified: Tue, 21 Aug 2018 18:45:50 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f828d71de860b9bfb9268e93f50b1351476f4f74912fb943e508a56c97e85ec`  
		Last Modified: Tue, 21 Aug 2018 18:45:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:824ac0b87afe7fcba6d009a46afa0f1678b27ebb1e8665de8650c8bfa4d3f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:a637265b0debaa509825d32cd98a8820aa9d02796d83e58c92a2f36e9aaf8a0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132637402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3485a86f6775e7753fd63f4cd2d63ed781886a8ad01dd649d5438aa960f38122`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:39:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 22 Aug 2018 18:39:55 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Wed, 22 Aug 2018 18:39:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:40:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:40:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:40:45 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:40:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:40:47 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:40:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c60179cdb64b92e9a7d7b2fdf4a6a77e561e9dd496fd8e69f944b811267a9f`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5c00acbc58dafe567f7ea700f831bc69babee466fda7305b19911a8dd232f5`  
		Last Modified: Wed, 22 Aug 2018 18:51:10 GMT  
		Size: 92.2 MB (92224951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01284ffeaa5e65b0ddf7e7403b255b67299887d931057d60765e00cc9016604`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732bf0732cfc7ff1df0dc739243ed73f188594a23af1c116e3d8bcf3b2b4db81`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:53c4a136e833d830f627e3a5c029b0a90e9251ffcbd9b81df7f880189267f17e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124983548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1f01937ec8f2ea8b8d6c968656c5755cb2daab3c5aa9f4deae675cb11b22d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:35:53 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 11 Aug 2018 09:30:09 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Sat, 11 Aug 2018 09:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 11 Aug 2018 09:32:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 11 Aug 2018 09:32:10 GMT
VOLUME [/var/lib/mysql]
# Sat, 11 Aug 2018 09:32:11 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Sat, 11 Aug 2018 09:32:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 09:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 09:32:16 GMT
EXPOSE 3306/tcp
# Sat, 11 Aug 2018 09:32:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89537601505d6c0fecfa0daf2c9a6e9f9e9dca2a72ea61d3937cf5828001fab`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb9e79941126a3368663124cc4aa4920aaa9cc2de02e3ffca38bb1e05583e4f`  
		Last Modified: Sat, 11 Aug 2018 09:33:22 GMT  
		Size: 88.5 MB (88500904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1106c6f439c802aaca5ad0fdcbc3f2d2e23bd92eea5ff100179a380834d2fd8`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3186b9cc7fe8fcdd5095561d8cee3b2a946ddd82d01610f9582a9ea799037fd9`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:901a86cda60c49e7397cc464c6c95401624052242371910d15b42e3ba87d3e0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138063809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f204f8f0a804200d81cbffc4a8c300e2775870dd3306bdeb8332f1715046b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:34:48 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 21 Aug 2018 18:34:52 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Tue, 21 Aug 2018 18:34:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:36:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:36:52 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:36:53 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:36:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:36:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:36:59 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:37:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e7684d16227d50292c253095c9ec9c4e3e1016e48ff2a463b8f718b82a97f`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ea4ade08c91e8fd7e89dd37232219579f0d95c9731f362c7b389f24e081128`  
		Last Modified: Tue, 21 Aug 2018 18:45:16 GMT  
		Size: 93.6 MB (93582989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50dc3651521afe7398d390fcf78a092855ca0d2228d7ccbf347ee83102b7aa`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b9d547510eee5e799cf08bc755c76af4c53c2abbbb39a226ff5c5e920df382`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.35`

```console
$ docker pull mariadb@sha256:824ac0b87afe7fcba6d009a46afa0f1678b27ebb1e8665de8650c8bfa4d3f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.35` - linux; amd64

```console
$ docker pull mariadb@sha256:a637265b0debaa509825d32cd98a8820aa9d02796d83e58c92a2f36e9aaf8a0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132637402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3485a86f6775e7753fd63f4cd2d63ed781886a8ad01dd649d5438aa960f38122`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:39:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 22 Aug 2018 18:39:55 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Wed, 22 Aug 2018 18:39:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:40:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:40:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:40:45 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:40:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:40:47 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:40:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c60179cdb64b92e9a7d7b2fdf4a6a77e561e9dd496fd8e69f944b811267a9f`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5c00acbc58dafe567f7ea700f831bc69babee466fda7305b19911a8dd232f5`  
		Last Modified: Wed, 22 Aug 2018 18:51:10 GMT  
		Size: 92.2 MB (92224951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01284ffeaa5e65b0ddf7e7403b255b67299887d931057d60765e00cc9016604`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732bf0732cfc7ff1df0dc739243ed73f188594a23af1c116e3d8bcf3b2b4db81`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.35` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:53c4a136e833d830f627e3a5c029b0a90e9251ffcbd9b81df7f880189267f17e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124983548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1f01937ec8f2ea8b8d6c968656c5755cb2daab3c5aa9f4deae675cb11b22d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:35:53 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 11 Aug 2018 09:30:09 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Sat, 11 Aug 2018 09:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 11 Aug 2018 09:32:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 11 Aug 2018 09:32:10 GMT
VOLUME [/var/lib/mysql]
# Sat, 11 Aug 2018 09:32:11 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Sat, 11 Aug 2018 09:32:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 09:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 09:32:16 GMT
EXPOSE 3306/tcp
# Sat, 11 Aug 2018 09:32:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89537601505d6c0fecfa0daf2c9a6e9f9e9dca2a72ea61d3937cf5828001fab`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb9e79941126a3368663124cc4aa4920aaa9cc2de02e3ffca38bb1e05583e4f`  
		Last Modified: Sat, 11 Aug 2018 09:33:22 GMT  
		Size: 88.5 MB (88500904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1106c6f439c802aaca5ad0fdcbc3f2d2e23bd92eea5ff100179a380834d2fd8`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3186b9cc7fe8fcdd5095561d8cee3b2a946ddd82d01610f9582a9ea799037fd9`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.35` - linux; ppc64le

```console
$ docker pull mariadb@sha256:901a86cda60c49e7397cc464c6c95401624052242371910d15b42e3ba87d3e0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138063809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f204f8f0a804200d81cbffc4a8c300e2775870dd3306bdeb8332f1715046b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:34:48 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 21 Aug 2018 18:34:52 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Tue, 21 Aug 2018 18:34:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:36:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:36:52 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:36:53 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:36:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:36:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:36:59 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:37:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e7684d16227d50292c253095c9ec9c4e3e1016e48ff2a463b8f718b82a97f`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ea4ade08c91e8fd7e89dd37232219579f0d95c9731f362c7b389f24e081128`  
		Last Modified: Tue, 21 Aug 2018 18:45:16 GMT  
		Size: 93.6 MB (93582989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50dc3651521afe7398d390fcf78a092855ca0d2228d7ccbf347ee83102b7aa`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b9d547510eee5e799cf08bc755c76af4c53c2abbbb39a226ff5c5e920df382`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.35-bionic`

```console
$ docker pull mariadb@sha256:824ac0b87afe7fcba6d009a46afa0f1678b27ebb1e8665de8650c8bfa4d3f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.35-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a637265b0debaa509825d32cd98a8820aa9d02796d83e58c92a2f36e9aaf8a0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132637402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3485a86f6775e7753fd63f4cd2d63ed781886a8ad01dd649d5438aa960f38122`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:39:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 22 Aug 2018 18:39:55 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Wed, 22 Aug 2018 18:39:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:40:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:40:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:40:45 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:40:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:40:47 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:40:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c60179cdb64b92e9a7d7b2fdf4a6a77e561e9dd496fd8e69f944b811267a9f`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5c00acbc58dafe567f7ea700f831bc69babee466fda7305b19911a8dd232f5`  
		Last Modified: Wed, 22 Aug 2018 18:51:10 GMT  
		Size: 92.2 MB (92224951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01284ffeaa5e65b0ddf7e7403b255b67299887d931057d60765e00cc9016604`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732bf0732cfc7ff1df0dc739243ed73f188594a23af1c116e3d8bcf3b2b4db81`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.35-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:53c4a136e833d830f627e3a5c029b0a90e9251ffcbd9b81df7f880189267f17e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124983548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1f01937ec8f2ea8b8d6c968656c5755cb2daab3c5aa9f4deae675cb11b22d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:35:53 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 11 Aug 2018 09:30:09 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Sat, 11 Aug 2018 09:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 11 Aug 2018 09:32:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 11 Aug 2018 09:32:10 GMT
VOLUME [/var/lib/mysql]
# Sat, 11 Aug 2018 09:32:11 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Sat, 11 Aug 2018 09:32:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 09:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 09:32:16 GMT
EXPOSE 3306/tcp
# Sat, 11 Aug 2018 09:32:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89537601505d6c0fecfa0daf2c9a6e9f9e9dca2a72ea61d3937cf5828001fab`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb9e79941126a3368663124cc4aa4920aaa9cc2de02e3ffca38bb1e05583e4f`  
		Last Modified: Sat, 11 Aug 2018 09:33:22 GMT  
		Size: 88.5 MB (88500904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1106c6f439c802aaca5ad0fdcbc3f2d2e23bd92eea5ff100179a380834d2fd8`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3186b9cc7fe8fcdd5095561d8cee3b2a946ddd82d01610f9582a9ea799037fd9`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.35-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:901a86cda60c49e7397cc464c6c95401624052242371910d15b42e3ba87d3e0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138063809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f204f8f0a804200d81cbffc4a8c300e2775870dd3306bdeb8332f1715046b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:34:48 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 21 Aug 2018 18:34:52 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Tue, 21 Aug 2018 18:34:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:36:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:36:52 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:36:53 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:36:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:36:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:36:59 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:37:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e7684d16227d50292c253095c9ec9c4e3e1016e48ff2a463b8f718b82a97f`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ea4ade08c91e8fd7e89dd37232219579f0d95c9731f362c7b389f24e081128`  
		Last Modified: Tue, 21 Aug 2018 18:45:16 GMT  
		Size: 93.6 MB (93582989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50dc3651521afe7398d390fcf78a092855ca0d2228d7ccbf347ee83102b7aa`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b9d547510eee5e799cf08bc755c76af4c53c2abbbb39a226ff5c5e920df382`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:824ac0b87afe7fcba6d009a46afa0f1678b27ebb1e8665de8650c8bfa4d3f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a637265b0debaa509825d32cd98a8820aa9d02796d83e58c92a2f36e9aaf8a0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132637402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3485a86f6775e7753fd63f4cd2d63ed781886a8ad01dd649d5438aa960f38122`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:39:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 22 Aug 2018 18:39:55 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Wed, 22 Aug 2018 18:39:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:40:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:40:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:40:45 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:40:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:40:47 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:40:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c60179cdb64b92e9a7d7b2fdf4a6a77e561e9dd496fd8e69f944b811267a9f`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5c00acbc58dafe567f7ea700f831bc69babee466fda7305b19911a8dd232f5`  
		Last Modified: Wed, 22 Aug 2018 18:51:10 GMT  
		Size: 92.2 MB (92224951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01284ffeaa5e65b0ddf7e7403b255b67299887d931057d60765e00cc9016604`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732bf0732cfc7ff1df0dc739243ed73f188594a23af1c116e3d8bcf3b2b4db81`  
		Last Modified: Wed, 22 Aug 2018 18:50:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:53c4a136e833d830f627e3a5c029b0a90e9251ffcbd9b81df7f880189267f17e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124983548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1f01937ec8f2ea8b8d6c968656c5755cb2daab3c5aa9f4deae675cb11b22d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:35:53 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 11 Aug 2018 09:30:09 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Sat, 11 Aug 2018 09:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 11 Aug 2018 09:32:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 11 Aug 2018 09:32:10 GMT
VOLUME [/var/lib/mysql]
# Sat, 11 Aug 2018 09:32:11 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Sat, 11 Aug 2018 09:32:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 09:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 09:32:16 GMT
EXPOSE 3306/tcp
# Sat, 11 Aug 2018 09:32:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89537601505d6c0fecfa0daf2c9a6e9f9e9dca2a72ea61d3937cf5828001fab`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb9e79941126a3368663124cc4aa4920aaa9cc2de02e3ffca38bb1e05583e4f`  
		Last Modified: Sat, 11 Aug 2018 09:33:22 GMT  
		Size: 88.5 MB (88500904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1106c6f439c802aaca5ad0fdcbc3f2d2e23bd92eea5ff100179a380834d2fd8`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3186b9cc7fe8fcdd5095561d8cee3b2a946ddd82d01610f9582a9ea799037fd9`  
		Last Modified: Sat, 11 Aug 2018 09:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:901a86cda60c49e7397cc464c6c95401624052242371910d15b42e3ba87d3e0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138063809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f204f8f0a804200d81cbffc4a8c300e2775870dd3306bdeb8332f1715046b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:34:48 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 21 Aug 2018 18:34:52 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Tue, 21 Aug 2018 18:34:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:36:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:36:52 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:36:53 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:36:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:36:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:36:59 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:37:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7e7684d16227d50292c253095c9ec9c4e3e1016e48ff2a463b8f718b82a97f`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ea4ade08c91e8fd7e89dd37232219579f0d95c9731f362c7b389f24e081128`  
		Last Modified: Tue, 21 Aug 2018 18:45:16 GMT  
		Size: 93.6 MB (93582989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50dc3651521afe7398d390fcf78a092855ca0d2228d7ccbf347ee83102b7aa`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b9d547510eee5e799cf08bc755c76af4c53c2abbbb39a226ff5c5e920df382`  
		Last Modified: Tue, 21 Aug 2018 18:44:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:658a62b68aaf24be3b7eda012c7b8c1177f7259d4e1c12fa113311987fbed734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:a93561602b2a1dec0e71a84f27b8f490d3dc07b3eb766bab2422b2d8dfb8be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113590434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861869856ad479eca9f53f0adc2c5b8b50bfdf9071e2ffaa3e56799f3ff5b64f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:38:56 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 22 Aug 2018 18:38:56 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Wed, 22 Aug 2018 18:38:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:39:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:39:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:39:29 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:39:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:39:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:39:31 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:39:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67058d803562478183fd67eba9f8c3dcdbfb6565db516b194185e8a28e7380ac`  
		Last Modified: Wed, 22 Aug 2018 18:48:43 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86dc776a2536964a6ac450f4ace5f82f2a875e5866e8fcaa4e506a59e3e3208`  
		Last Modified: Wed, 22 Aug 2018 18:49:09 GMT  
		Size: 73.2 MB (73177982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ac24b4ec8ee1260be5c51719c0721306fd2e5ad5befbfd7deec2d654662ce6`  
		Last Modified: Wed, 22 Aug 2018 18:48:42 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf044c27ee9b94f90f4d296c9032b344fa02cab64429aaf77df38188afaaa49`  
		Last Modified: Wed, 22 Aug 2018 18:48:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:229ae6ffc97dbb16a015702eef8aa66aae80352e3a13dd9c9164fc454e746732
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108566129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c990d9551a29e832b572ca878f1a680572adb0729da30680d24d3640eb0befb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:32:54 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 17 Aug 2018 09:01:19 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Fri, 17 Aug 2018 09:01:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:02:59 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:03:10 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:03:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:03:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:03:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:03:34 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:03:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d076dd37c67131d8dae5c885d46562a1149a41c123a71e99c5e1e2e5564b124`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0872342da67e4639189b529d238125b72aad28f3693af89cc6b737837d6d9`  
		Last Modified: Fri, 17 Aug 2018 09:09:11 GMT  
		Size: 72.1 MB (72083486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56721158acc5086ace33dcdeb1fbe543928146afe16b110c9bb8c30c52431bce`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784ddc363814f3ed591717c5eb02a2a076b0cad1dd7ab1a90b92cd91e0f6df70`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7cbf42a89a923f3e9fbe9fa52029c863a3391febf4adc3150fab5ca8139be64a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120499097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fbe0044e868d9ca4e9503c07f55db16475640d296578d20256434b0354d585`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:32:33 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 21 Aug 2018 18:32:35 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Tue, 21 Aug 2018 18:32:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:34:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:34:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:34:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:34:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:34:27 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:34:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56674a4b5f8a7f326cb4aa9c478b4ccf036cc7a7e45c3fbdc4c35f60ee3ef9f`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a17160b49c99faf3683fad89e23e6380a93791dc2bfe8b2a7a06fbf74df5d4`  
		Last Modified: Tue, 21 Aug 2018 18:44:16 GMT  
		Size: 76.0 MB (76018273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f76725a93240155e977738f40bed00dbc4575bb17acb40135e1bb1f9368d1e3`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd26d59dab090208037bb2d38f45662dad34726442f2ca122cf47123eb23713`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.17`

```console
$ docker pull mariadb@sha256:658a62b68aaf24be3b7eda012c7b8c1177f7259d4e1c12fa113311987fbed734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.17` - linux; amd64

```console
$ docker pull mariadb@sha256:a93561602b2a1dec0e71a84f27b8f490d3dc07b3eb766bab2422b2d8dfb8be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113590434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861869856ad479eca9f53f0adc2c5b8b50bfdf9071e2ffaa3e56799f3ff5b64f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:38:56 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 22 Aug 2018 18:38:56 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Wed, 22 Aug 2018 18:38:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:39:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:39:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:39:29 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:39:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:39:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:39:31 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:39:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67058d803562478183fd67eba9f8c3dcdbfb6565db516b194185e8a28e7380ac`  
		Last Modified: Wed, 22 Aug 2018 18:48:43 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86dc776a2536964a6ac450f4ace5f82f2a875e5866e8fcaa4e506a59e3e3208`  
		Last Modified: Wed, 22 Aug 2018 18:49:09 GMT  
		Size: 73.2 MB (73177982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ac24b4ec8ee1260be5c51719c0721306fd2e5ad5befbfd7deec2d654662ce6`  
		Last Modified: Wed, 22 Aug 2018 18:48:42 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf044c27ee9b94f90f4d296c9032b344fa02cab64429aaf77df38188afaaa49`  
		Last Modified: Wed, 22 Aug 2018 18:48:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.17` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:229ae6ffc97dbb16a015702eef8aa66aae80352e3a13dd9c9164fc454e746732
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108566129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c990d9551a29e832b572ca878f1a680572adb0729da30680d24d3640eb0befb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:32:54 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 17 Aug 2018 09:01:19 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Fri, 17 Aug 2018 09:01:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:02:59 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:03:10 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:03:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:03:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:03:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:03:34 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:03:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d076dd37c67131d8dae5c885d46562a1149a41c123a71e99c5e1e2e5564b124`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0872342da67e4639189b529d238125b72aad28f3693af89cc6b737837d6d9`  
		Last Modified: Fri, 17 Aug 2018 09:09:11 GMT  
		Size: 72.1 MB (72083486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56721158acc5086ace33dcdeb1fbe543928146afe16b110c9bb8c30c52431bce`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784ddc363814f3ed591717c5eb02a2a076b0cad1dd7ab1a90b92cd91e0f6df70`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.17` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7cbf42a89a923f3e9fbe9fa52029c863a3391febf4adc3150fab5ca8139be64a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120499097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fbe0044e868d9ca4e9503c07f55db16475640d296578d20256434b0354d585`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:32:33 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 21 Aug 2018 18:32:35 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Tue, 21 Aug 2018 18:32:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:34:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:34:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:34:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:34:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:34:27 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:34:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56674a4b5f8a7f326cb4aa9c478b4ccf036cc7a7e45c3fbdc4c35f60ee3ef9f`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a17160b49c99faf3683fad89e23e6380a93791dc2bfe8b2a7a06fbf74df5d4`  
		Last Modified: Tue, 21 Aug 2018 18:44:16 GMT  
		Size: 76.0 MB (76018273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f76725a93240155e977738f40bed00dbc4575bb17acb40135e1bb1f9368d1e3`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd26d59dab090208037bb2d38f45662dad34726442f2ca122cf47123eb23713`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.17-bionic`

```console
$ docker pull mariadb@sha256:658a62b68aaf24be3b7eda012c7b8c1177f7259d4e1c12fa113311987fbed734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.17-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a93561602b2a1dec0e71a84f27b8f490d3dc07b3eb766bab2422b2d8dfb8be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113590434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861869856ad479eca9f53f0adc2c5b8b50bfdf9071e2ffaa3e56799f3ff5b64f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:38:56 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 22 Aug 2018 18:38:56 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Wed, 22 Aug 2018 18:38:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:39:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:39:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:39:29 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:39:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:39:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:39:31 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:39:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67058d803562478183fd67eba9f8c3dcdbfb6565db516b194185e8a28e7380ac`  
		Last Modified: Wed, 22 Aug 2018 18:48:43 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86dc776a2536964a6ac450f4ace5f82f2a875e5866e8fcaa4e506a59e3e3208`  
		Last Modified: Wed, 22 Aug 2018 18:49:09 GMT  
		Size: 73.2 MB (73177982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ac24b4ec8ee1260be5c51719c0721306fd2e5ad5befbfd7deec2d654662ce6`  
		Last Modified: Wed, 22 Aug 2018 18:48:42 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf044c27ee9b94f90f4d296c9032b344fa02cab64429aaf77df38188afaaa49`  
		Last Modified: Wed, 22 Aug 2018 18:48:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.17-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:229ae6ffc97dbb16a015702eef8aa66aae80352e3a13dd9c9164fc454e746732
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108566129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c990d9551a29e832b572ca878f1a680572adb0729da30680d24d3640eb0befb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:32:54 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 17 Aug 2018 09:01:19 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Fri, 17 Aug 2018 09:01:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:02:59 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:03:10 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:03:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:03:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:03:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:03:34 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:03:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d076dd37c67131d8dae5c885d46562a1149a41c123a71e99c5e1e2e5564b124`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0872342da67e4639189b529d238125b72aad28f3693af89cc6b737837d6d9`  
		Last Modified: Fri, 17 Aug 2018 09:09:11 GMT  
		Size: 72.1 MB (72083486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56721158acc5086ace33dcdeb1fbe543928146afe16b110c9bb8c30c52431bce`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784ddc363814f3ed591717c5eb02a2a076b0cad1dd7ab1a90b92cd91e0f6df70`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.17-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7cbf42a89a923f3e9fbe9fa52029c863a3391febf4adc3150fab5ca8139be64a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120499097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fbe0044e868d9ca4e9503c07f55db16475640d296578d20256434b0354d585`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:32:33 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 21 Aug 2018 18:32:35 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Tue, 21 Aug 2018 18:32:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:34:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:34:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:34:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:34:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:34:27 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:34:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56674a4b5f8a7f326cb4aa9c478b4ccf036cc7a7e45c3fbdc4c35f60ee3ef9f`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a17160b49c99faf3683fad89e23e6380a93791dc2bfe8b2a7a06fbf74df5d4`  
		Last Modified: Tue, 21 Aug 2018 18:44:16 GMT  
		Size: 76.0 MB (76018273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f76725a93240155e977738f40bed00dbc4575bb17acb40135e1bb1f9368d1e3`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd26d59dab090208037bb2d38f45662dad34726442f2ca122cf47123eb23713`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:658a62b68aaf24be3b7eda012c7b8c1177f7259d4e1c12fa113311987fbed734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a93561602b2a1dec0e71a84f27b8f490d3dc07b3eb766bab2422b2d8dfb8be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113590434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861869856ad479eca9f53f0adc2c5b8b50bfdf9071e2ffaa3e56799f3ff5b64f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:38:56 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 22 Aug 2018 18:38:56 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Wed, 22 Aug 2018 18:38:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:39:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:39:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:39:29 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:39:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:39:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:39:31 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:39:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67058d803562478183fd67eba9f8c3dcdbfb6565db516b194185e8a28e7380ac`  
		Last Modified: Wed, 22 Aug 2018 18:48:43 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86dc776a2536964a6ac450f4ace5f82f2a875e5866e8fcaa4e506a59e3e3208`  
		Last Modified: Wed, 22 Aug 2018 18:49:09 GMT  
		Size: 73.2 MB (73177982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ac24b4ec8ee1260be5c51719c0721306fd2e5ad5befbfd7deec2d654662ce6`  
		Last Modified: Wed, 22 Aug 2018 18:48:42 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf044c27ee9b94f90f4d296c9032b344fa02cab64429aaf77df38188afaaa49`  
		Last Modified: Wed, 22 Aug 2018 18:48:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:229ae6ffc97dbb16a015702eef8aa66aae80352e3a13dd9c9164fc454e746732
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108566129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c990d9551a29e832b572ca878f1a680572adb0729da30680d24d3640eb0befb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:32:54 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 17 Aug 2018 09:01:19 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Fri, 17 Aug 2018 09:01:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:02:59 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:03:10 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:03:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:03:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:03:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:03:34 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:03:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d076dd37c67131d8dae5c885d46562a1149a41c123a71e99c5e1e2e5564b124`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0872342da67e4639189b529d238125b72aad28f3693af89cc6b737837d6d9`  
		Last Modified: Fri, 17 Aug 2018 09:09:11 GMT  
		Size: 72.1 MB (72083486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56721158acc5086ace33dcdeb1fbe543928146afe16b110c9bb8c30c52431bce`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784ddc363814f3ed591717c5eb02a2a076b0cad1dd7ab1a90b92cd91e0f6df70`  
		Last Modified: Fri, 17 Aug 2018 09:08:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7cbf42a89a923f3e9fbe9fa52029c863a3391febf4adc3150fab5ca8139be64a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120499097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fbe0044e868d9ca4e9503c07f55db16475640d296578d20256434b0354d585`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:32:33 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 21 Aug 2018 18:32:35 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Tue, 21 Aug 2018 18:32:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:34:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:34:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:34:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:34:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:34:27 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:34:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56674a4b5f8a7f326cb4aa9c478b4ccf036cc7a7e45c3fbdc4c35f60ee3ef9f`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a17160b49c99faf3683fad89e23e6380a93791dc2bfe8b2a7a06fbf74df5d4`  
		Last Modified: Tue, 21 Aug 2018 18:44:16 GMT  
		Size: 76.0 MB (76018273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f76725a93240155e977738f40bed00dbc4575bb17acb40135e1bb1f9368d1e3`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd26d59dab090208037bb2d38f45662dad34726442f2ca122cf47123eb23713`  
		Last Modified: Tue, 21 Aug 2018 18:43:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:33b7d6222348a0a1e7a7753ee65f6e1658deb500b1c096b45547a16dd2b57fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:cce5e3d65345652b722fec8ce0d85650f31da78ee4815c764450092848bddaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d4ebaca2a6cf4679676608529c4700542d455d8e5767f6d160078a43eb62f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 22 Aug 2018 18:37:17 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:38:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:38:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:38:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:38:22 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:38:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c561989800a27eeb09e3f45eaf69c75773ef00dbbed1db536e2709da03f9805`  
		Last Modified: Wed, 22 Aug 2018 18:45:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ffda50aea95315e6a82269e8a3cf616793369e22d744a3df9f4d344278838b`  
		Last Modified: Wed, 22 Aug 2018 18:45:30 GMT  
		Size: 74.2 MB (74183544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7acb6945c1cae78b915564b46ccfa59c0e7c2aace175efaf7b1fb51c392a1d`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03680e4e0d7c6d9b8b90aab89ffb4690fa966036400e106a88fe54bd6e760180`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cb273c8df5f23a9950a26a63720791449cd5fc2f1caf2cc5db78ccfddc66c67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109554942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deb23c447058ce2e302d24f4fb17b2b36919b07640608a4decc548708152ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:30:07 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 17 Aug 2018 08:58:59 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Fri, 17 Aug 2018 08:59:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:00:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:00:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:00:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:00:46 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:00:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a60edd2028711f0e81bf91f71fb20e9416560ee8de076e235d30db34c3e56`  
		Last Modified: Fri, 17 Aug 2018 09:04:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c350c862a6f4ec47d6c15583253e3506df1e5ff5d6da2e7fa26265d8012a660e`  
		Last Modified: Fri, 17 Aug 2018 09:04:58 GMT  
		Size: 73.1 MB (73072302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae0467666f66a0d95b25a5e7079e73433e11b5f7e50418488d1fc0d2e44e7a`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8935fadb6c36f825c584dcdf689b4104c75d1e73f1a5dd8a0b4a7642715ffe`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:036d3069afbf1ed91c3a7c1665caadec34449a8b826a83b73e4836462a2cabc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121566072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ba75f342a1fbe87d3cbf5280e70a8d796806f8b1c2a923ed6b3924ff23e21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:30:50 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 21 Aug 2018 18:30:51 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Tue, 21 Aug 2018 18:30:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:32:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:32:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:32:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:32:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:32:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:32:25 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:32:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1463ba7afc343529ca6ddc18a466919ff7198090afdca60327327347d3b678`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6a2ec4235a7c8af3bbbb555c589fb77a4c732f6df00b8c6310a17104a0784e`  
		Last Modified: Tue, 21 Aug 2018 18:42:53 GMT  
		Size: 77.1 MB (77085251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934574fdd3d8eef172037bca672b0b67b297ff789e172b05aeb1bdd9b131ebb`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791da7fe722358b4459f4bee42503c0c8d273066a213aed674f97f39f785c3b2`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.9`

```console
$ docker pull mariadb@sha256:33b7d6222348a0a1e7a7753ee65f6e1658deb500b1c096b45547a16dd2b57fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.9` - linux; amd64

```console
$ docker pull mariadb@sha256:cce5e3d65345652b722fec8ce0d85650f31da78ee4815c764450092848bddaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d4ebaca2a6cf4679676608529c4700542d455d8e5767f6d160078a43eb62f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 22 Aug 2018 18:37:17 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:38:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:38:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:38:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:38:22 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:38:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c561989800a27eeb09e3f45eaf69c75773ef00dbbed1db536e2709da03f9805`  
		Last Modified: Wed, 22 Aug 2018 18:45:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ffda50aea95315e6a82269e8a3cf616793369e22d744a3df9f4d344278838b`  
		Last Modified: Wed, 22 Aug 2018 18:45:30 GMT  
		Size: 74.2 MB (74183544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7acb6945c1cae78b915564b46ccfa59c0e7c2aace175efaf7b1fb51c392a1d`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03680e4e0d7c6d9b8b90aab89ffb4690fa966036400e106a88fe54bd6e760180`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.9` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cb273c8df5f23a9950a26a63720791449cd5fc2f1caf2cc5db78ccfddc66c67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109554942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deb23c447058ce2e302d24f4fb17b2b36919b07640608a4decc548708152ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:30:07 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 17 Aug 2018 08:58:59 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Fri, 17 Aug 2018 08:59:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:00:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:00:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:00:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:00:46 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:00:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a60edd2028711f0e81bf91f71fb20e9416560ee8de076e235d30db34c3e56`  
		Last Modified: Fri, 17 Aug 2018 09:04:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c350c862a6f4ec47d6c15583253e3506df1e5ff5d6da2e7fa26265d8012a660e`  
		Last Modified: Fri, 17 Aug 2018 09:04:58 GMT  
		Size: 73.1 MB (73072302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae0467666f66a0d95b25a5e7079e73433e11b5f7e50418488d1fc0d2e44e7a`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8935fadb6c36f825c584dcdf689b4104c75d1e73f1a5dd8a0b4a7642715ffe`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.9` - linux; ppc64le

```console
$ docker pull mariadb@sha256:036d3069afbf1ed91c3a7c1665caadec34449a8b826a83b73e4836462a2cabc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121566072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ba75f342a1fbe87d3cbf5280e70a8d796806f8b1c2a923ed6b3924ff23e21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:30:50 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 21 Aug 2018 18:30:51 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Tue, 21 Aug 2018 18:30:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:32:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:32:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:32:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:32:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:32:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:32:25 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:32:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1463ba7afc343529ca6ddc18a466919ff7198090afdca60327327347d3b678`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6a2ec4235a7c8af3bbbb555c589fb77a4c732f6df00b8c6310a17104a0784e`  
		Last Modified: Tue, 21 Aug 2018 18:42:53 GMT  
		Size: 77.1 MB (77085251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934574fdd3d8eef172037bca672b0b67b297ff789e172b05aeb1bdd9b131ebb`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791da7fe722358b4459f4bee42503c0c8d273066a213aed674f97f39f785c3b2`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.9-bionic`

```console
$ docker pull mariadb@sha256:33b7d6222348a0a1e7a7753ee65f6e1658deb500b1c096b45547a16dd2b57fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.9-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:cce5e3d65345652b722fec8ce0d85650f31da78ee4815c764450092848bddaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d4ebaca2a6cf4679676608529c4700542d455d8e5767f6d160078a43eb62f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 22 Aug 2018 18:37:17 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:38:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:38:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:38:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:38:22 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:38:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c561989800a27eeb09e3f45eaf69c75773ef00dbbed1db536e2709da03f9805`  
		Last Modified: Wed, 22 Aug 2018 18:45:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ffda50aea95315e6a82269e8a3cf616793369e22d744a3df9f4d344278838b`  
		Last Modified: Wed, 22 Aug 2018 18:45:30 GMT  
		Size: 74.2 MB (74183544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7acb6945c1cae78b915564b46ccfa59c0e7c2aace175efaf7b1fb51c392a1d`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03680e4e0d7c6d9b8b90aab89ffb4690fa966036400e106a88fe54bd6e760180`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.9-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cb273c8df5f23a9950a26a63720791449cd5fc2f1caf2cc5db78ccfddc66c67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109554942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deb23c447058ce2e302d24f4fb17b2b36919b07640608a4decc548708152ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:30:07 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 17 Aug 2018 08:58:59 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Fri, 17 Aug 2018 08:59:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:00:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:00:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:00:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:00:46 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:00:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a60edd2028711f0e81bf91f71fb20e9416560ee8de076e235d30db34c3e56`  
		Last Modified: Fri, 17 Aug 2018 09:04:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c350c862a6f4ec47d6c15583253e3506df1e5ff5d6da2e7fa26265d8012a660e`  
		Last Modified: Fri, 17 Aug 2018 09:04:58 GMT  
		Size: 73.1 MB (73072302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae0467666f66a0d95b25a5e7079e73433e11b5f7e50418488d1fc0d2e44e7a`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8935fadb6c36f825c584dcdf689b4104c75d1e73f1a5dd8a0b4a7642715ffe`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.9-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:036d3069afbf1ed91c3a7c1665caadec34449a8b826a83b73e4836462a2cabc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121566072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ba75f342a1fbe87d3cbf5280e70a8d796806f8b1c2a923ed6b3924ff23e21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:30:50 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 21 Aug 2018 18:30:51 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Tue, 21 Aug 2018 18:30:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:32:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:32:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:32:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:32:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:32:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:32:25 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:32:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1463ba7afc343529ca6ddc18a466919ff7198090afdca60327327347d3b678`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6a2ec4235a7c8af3bbbb555c589fb77a4c732f6df00b8c6310a17104a0784e`  
		Last Modified: Tue, 21 Aug 2018 18:42:53 GMT  
		Size: 77.1 MB (77085251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934574fdd3d8eef172037bca672b0b67b297ff789e172b05aeb1bdd9b131ebb`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791da7fe722358b4459f4bee42503c0c8d273066a213aed674f97f39f785c3b2`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:33b7d6222348a0a1e7a7753ee65f6e1658deb500b1c096b45547a16dd2b57fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:cce5e3d65345652b722fec8ce0d85650f31da78ee4815c764450092848bddaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d4ebaca2a6cf4679676608529c4700542d455d8e5767f6d160078a43eb62f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 22 Aug 2018 18:37:17 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:38:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:38:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:38:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:38:22 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:38:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c561989800a27eeb09e3f45eaf69c75773ef00dbbed1db536e2709da03f9805`  
		Last Modified: Wed, 22 Aug 2018 18:45:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ffda50aea95315e6a82269e8a3cf616793369e22d744a3df9f4d344278838b`  
		Last Modified: Wed, 22 Aug 2018 18:45:30 GMT  
		Size: 74.2 MB (74183544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7acb6945c1cae78b915564b46ccfa59c0e7c2aace175efaf7b1fb51c392a1d`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03680e4e0d7c6d9b8b90aab89ffb4690fa966036400e106a88fe54bd6e760180`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cb273c8df5f23a9950a26a63720791449cd5fc2f1caf2cc5db78ccfddc66c67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109554942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deb23c447058ce2e302d24f4fb17b2b36919b07640608a4decc548708152ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:30:07 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 17 Aug 2018 08:58:59 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Fri, 17 Aug 2018 08:59:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:00:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:00:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:00:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:00:46 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:00:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a60edd2028711f0e81bf91f71fb20e9416560ee8de076e235d30db34c3e56`  
		Last Modified: Fri, 17 Aug 2018 09:04:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c350c862a6f4ec47d6c15583253e3506df1e5ff5d6da2e7fa26265d8012a660e`  
		Last Modified: Fri, 17 Aug 2018 09:04:58 GMT  
		Size: 73.1 MB (73072302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae0467666f66a0d95b25a5e7079e73433e11b5f7e50418488d1fc0d2e44e7a`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8935fadb6c36f825c584dcdf689b4104c75d1e73f1a5dd8a0b4a7642715ffe`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:036d3069afbf1ed91c3a7c1665caadec34449a8b826a83b73e4836462a2cabc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121566072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ba75f342a1fbe87d3cbf5280e70a8d796806f8b1c2a923ed6b3924ff23e21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:30:50 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 21 Aug 2018 18:30:51 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Tue, 21 Aug 2018 18:30:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:32:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:32:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:32:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:32:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:32:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:32:25 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:32:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1463ba7afc343529ca6ddc18a466919ff7198090afdca60327327347d3b678`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6a2ec4235a7c8af3bbbb555c589fb77a4c732f6df00b8c6310a17104a0784e`  
		Last Modified: Tue, 21 Aug 2018 18:42:53 GMT  
		Size: 77.1 MB (77085251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934574fdd3d8eef172037bca672b0b67b297ff789e172b05aeb1bdd9b131ebb`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791da7fe722358b4459f4bee42503c0c8d273066a213aed674f97f39f785c3b2`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:33b7d6222348a0a1e7a7753ee65f6e1658deb500b1c096b45547a16dd2b57fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:cce5e3d65345652b722fec8ce0d85650f31da78ee4815c764450092848bddaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d4ebaca2a6cf4679676608529c4700542d455d8e5767f6d160078a43eb62f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 22 Aug 2018 18:37:17 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:38:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:38:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:38:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:38:22 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:38:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c561989800a27eeb09e3f45eaf69c75773ef00dbbed1db536e2709da03f9805`  
		Last Modified: Wed, 22 Aug 2018 18:45:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ffda50aea95315e6a82269e8a3cf616793369e22d744a3df9f4d344278838b`  
		Last Modified: Wed, 22 Aug 2018 18:45:30 GMT  
		Size: 74.2 MB (74183544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7acb6945c1cae78b915564b46ccfa59c0e7c2aace175efaf7b1fb51c392a1d`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03680e4e0d7c6d9b8b90aab89ffb4690fa966036400e106a88fe54bd6e760180`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cb273c8df5f23a9950a26a63720791449cd5fc2f1caf2cc5db78ccfddc66c67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109554942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deb23c447058ce2e302d24f4fb17b2b36919b07640608a4decc548708152ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:30:07 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 17 Aug 2018 08:58:59 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Fri, 17 Aug 2018 08:59:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:00:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:00:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:00:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:00:46 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:00:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a60edd2028711f0e81bf91f71fb20e9416560ee8de076e235d30db34c3e56`  
		Last Modified: Fri, 17 Aug 2018 09:04:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c350c862a6f4ec47d6c15583253e3506df1e5ff5d6da2e7fa26265d8012a660e`  
		Last Modified: Fri, 17 Aug 2018 09:04:58 GMT  
		Size: 73.1 MB (73072302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae0467666f66a0d95b25a5e7079e73433e11b5f7e50418488d1fc0d2e44e7a`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8935fadb6c36f825c584dcdf689b4104c75d1e73f1a5dd8a0b4a7642715ffe`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:036d3069afbf1ed91c3a7c1665caadec34449a8b826a83b73e4836462a2cabc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121566072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ba75f342a1fbe87d3cbf5280e70a8d796806f8b1c2a923ed6b3924ff23e21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:30:50 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 21 Aug 2018 18:30:51 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Tue, 21 Aug 2018 18:30:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:32:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:32:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:32:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:32:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:32:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:32:25 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:32:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1463ba7afc343529ca6ddc18a466919ff7198090afdca60327327347d3b678`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6a2ec4235a7c8af3bbbb555c589fb77a4c732f6df00b8c6310a17104a0784e`  
		Last Modified: Tue, 21 Aug 2018 18:42:53 GMT  
		Size: 77.1 MB (77085251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934574fdd3d8eef172037bca672b0b67b297ff789e172b05aeb1bdd9b131ebb`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791da7fe722358b4459f4bee42503c0c8d273066a213aed674f97f39f785c3b2`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:73bbd2c3917338099351175eaa2ff8e6dc147cb61d11c51da0d04698486bf3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:281bbce6d547c69662a3038e9be1fc536438d9a32b15fa60bf7ae57ceccb0ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ef961ebeb29ac9ea36e0b99ed42f66c366e0a79e1e4ac89cdfb6ef7ba92c4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:43:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:43:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:43:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:43:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:43:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 22 Aug 2018 18:43:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:44:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:44:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:44:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:44:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:44:19 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:44:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43a16d8f549e6a9a97711e202444104ce9cd639a1b7a9747870dab81f40428e`  
		Last Modified: Wed, 22 Aug 2018 18:54:50 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02ad60e3b2c9a4c49e7907f734a2ea7ff5544c7a2f8c59780de914e9e051ab`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d110f2a8c7cbcdc4567f4cc84c69286393e26f867a6368aedf0f00b758bf05`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 1.6 MB (1572188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffc8cf577dab0caf3aa1ac1a6f8d4752ee0cf457dbae467d975f3edc3774875`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd19474723dfbec5e14179929dae8e565b0477c60ef27def42e623c40858452d`  
		Last Modified: Wed, 22 Aug 2018 18:54:47 GMT  
		Size: 4.3 MB (4261208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eb92635a02439df352ffd224904f013d0e30ac6583528dd9f6233d0daebb24`  
		Last Modified: Wed, 22 Aug 2018 18:54:44 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee08be00c78157f083fd7577424b864eb590d8d0e6c48f95b4b02b0400e333`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e591b49f3be984cec6e7cc49fa1c95c9c6ea8068a98436f0d063595a71d1490`  
		Last Modified: Wed, 22 Aug 2018 18:54:58 GMT  
		Size: 45.3 MB (45278078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074267811740b61ebe9977433c08d5b6fb8e286bb0cc6d2f15a56b1126e10e57`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801461551d6c615e5e970ba627e37b7585d40a60662806cb7e24c19aec7f4564`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:2f25ac55fe84f615593e35b7307d0e46777f0813af7d410223712672fe5726b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114553579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d414e9bcd55d22ada9e7216c1f2cfdb0b3a6771d81f39d886c11dece80977534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:04:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:04:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:05:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:05:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:05:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:05:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:05:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 11:11:05 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 11:11:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:28:43 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:28:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:28:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:28:45 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:28:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa8dacf386cc8d36fa3a4c7eb9a99625e32583f847e44d85c1029c6c13dd08`  
		Last Modified: Thu, 26 Jul 2018 11:08:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912f3e6db0a74abba9c4f99b784a960a22d20d0e0c02bd565801bd689c38d4`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31f321cc3bdabd237b133aef9224458624ce2efb79f175a5a3925706cdac166`  
		Last Modified: Thu, 26 Jul 2018 11:08:56 GMT  
		Size: 1.6 MB (1552219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a6501b17cc7718f8220bac093c05fab540a0c85ae340b18644f0a2a2b6912`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f1b40727a1f9ad7d1e5b7de9636083fdda70254ef26b44562dab1088cd487`  
		Last Modified: Thu, 26 Jul 2018 11:08:57 GMT  
		Size: 4.2 MB (4248000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2812527c01bcd5840b0d83700fd8160613dacdc0c3098b0188a5a58cf6e9fd9a`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6720474f2495220d8670e264be99a57d127d15f9655ecb7a84ef136cbbeb1ee`  
		Last Modified: Wed, 01 Aug 2018 11:12:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d8c6cfab7e3f40dd264b3485c029689d53f14ea22d6f55f35c8876c5dbd482`  
		Last Modified: Fri, 03 Aug 2018 11:32:01 GMT  
		Size: 43.8 MB (43827830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1953dc5894daaa049dec32f74eff46c27989cfc43b5a37a0cbe0bab52dbbd15`  
		Last Modified: Fri, 03 Aug 2018 11:31:43 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135f55af476463af2427b6053b122bf7b7131eb92eb514de460c7a48b3ebda4`  
		Last Modified: Fri, 03 Aug 2018 11:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:83d1210dcf3ee52eac311f6de16c5323c6caf0ce99d196bfb5ad4d08be937f47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116739106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de83b19fd5b9810202e8c752d8ee9cbddbc958a3866ffff1a538c662b4f1e0da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
# Wed, 01 Aug 2018 09:30:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 01 Aug 2018 09:31:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:31:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 09:33:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 01 Aug 2018 09:34:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 01 Aug 2018 09:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:39:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 01 Aug 2018 09:39:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 09:39:40 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 09:39:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 09:40:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:29:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:29:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:29:48 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:29:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:30:00 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:30:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7f244e1eb2d7ae9c206b7e15ed463a56813514adadf66ab17150ea8afa699c`  
		Last Modified: Wed, 01 Aug 2018 09:49:52 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c1de394e251c65b2f9455c61f113108e0181b5b441fba0f78e4d003dbdf1e`  
		Last Modified: Wed, 01 Aug 2018 09:49:43 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4edbcd4ecd287367cead8828d1022e2fd6d8b05993c4d2766bd06b245a22dc0`  
		Last Modified: Wed, 01 Aug 2018 09:49:45 GMT  
		Size: 1.5 MB (1545358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0170b04161ba80784a575287a2475204c6fc1239756c5b51f46118344e35c9`  
		Last Modified: Wed, 01 Aug 2018 09:49:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cbfe069dd9fd2fe4f193ec5b0a189e3b0a71b130c6fde1188aeafea1862b7b`  
		Last Modified: Wed, 01 Aug 2018 09:49:46 GMT  
		Size: 4.3 MB (4288001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f88e15d48d949cb7c816e05672dcd8de3c408cae6ee4c4fffc568bd23ee4d`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa80aea40984b91ffdc00b77d655c08ba3f559c64409543e18d9e22e96cbed`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ef8494c73bb8655deabffedd29d64b2f89bcf802ba99dea8baf915776b740d`  
		Last Modified: Fri, 03 Aug 2018 09:32:12 GMT  
		Size: 36.2 MB (36196188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ead9ff91da1c3254063337e99cd752328cecb7126ffbd7fd81d8d471e40c5`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5beade9b1ea9994c07b94a1eea3e82a47fdf5b86bb766cc48d16e687feaec13`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:73bbd2c3917338099351175eaa2ff8e6dc147cb61d11c51da0d04698486bf3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:281bbce6d547c69662a3038e9be1fc536438d9a32b15fa60bf7ae57ceccb0ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ef961ebeb29ac9ea36e0b99ed42f66c366e0a79e1e4ac89cdfb6ef7ba92c4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:43:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:43:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:43:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:43:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:43:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 22 Aug 2018 18:43:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:44:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:44:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:44:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:44:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:44:19 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:44:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43a16d8f549e6a9a97711e202444104ce9cd639a1b7a9747870dab81f40428e`  
		Last Modified: Wed, 22 Aug 2018 18:54:50 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02ad60e3b2c9a4c49e7907f734a2ea7ff5544c7a2f8c59780de914e9e051ab`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d110f2a8c7cbcdc4567f4cc84c69286393e26f867a6368aedf0f00b758bf05`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 1.6 MB (1572188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffc8cf577dab0caf3aa1ac1a6f8d4752ee0cf457dbae467d975f3edc3774875`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd19474723dfbec5e14179929dae8e565b0477c60ef27def42e623c40858452d`  
		Last Modified: Wed, 22 Aug 2018 18:54:47 GMT  
		Size: 4.3 MB (4261208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eb92635a02439df352ffd224904f013d0e30ac6583528dd9f6233d0daebb24`  
		Last Modified: Wed, 22 Aug 2018 18:54:44 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee08be00c78157f083fd7577424b864eb590d8d0e6c48f95b4b02b0400e333`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e591b49f3be984cec6e7cc49fa1c95c9c6ea8068a98436f0d063595a71d1490`  
		Last Modified: Wed, 22 Aug 2018 18:54:58 GMT  
		Size: 45.3 MB (45278078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074267811740b61ebe9977433c08d5b6fb8e286bb0cc6d2f15a56b1126e10e57`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801461551d6c615e5e970ba627e37b7585d40a60662806cb7e24c19aec7f4564`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:2f25ac55fe84f615593e35b7307d0e46777f0813af7d410223712672fe5726b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114553579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d414e9bcd55d22ada9e7216c1f2cfdb0b3a6771d81f39d886c11dece80977534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:04:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:04:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:05:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:05:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:05:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:05:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:05:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 11:11:05 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 11:11:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:28:43 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:28:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:28:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:28:45 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:28:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa8dacf386cc8d36fa3a4c7eb9a99625e32583f847e44d85c1029c6c13dd08`  
		Last Modified: Thu, 26 Jul 2018 11:08:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912f3e6db0a74abba9c4f99b784a960a22d20d0e0c02bd565801bd689c38d4`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31f321cc3bdabd237b133aef9224458624ce2efb79f175a5a3925706cdac166`  
		Last Modified: Thu, 26 Jul 2018 11:08:56 GMT  
		Size: 1.6 MB (1552219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a6501b17cc7718f8220bac093c05fab540a0c85ae340b18644f0a2a2b6912`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f1b40727a1f9ad7d1e5b7de9636083fdda70254ef26b44562dab1088cd487`  
		Last Modified: Thu, 26 Jul 2018 11:08:57 GMT  
		Size: 4.2 MB (4248000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2812527c01bcd5840b0d83700fd8160613dacdc0c3098b0188a5a58cf6e9fd9a`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6720474f2495220d8670e264be99a57d127d15f9655ecb7a84ef136cbbeb1ee`  
		Last Modified: Wed, 01 Aug 2018 11:12:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d8c6cfab7e3f40dd264b3485c029689d53f14ea22d6f55f35c8876c5dbd482`  
		Last Modified: Fri, 03 Aug 2018 11:32:01 GMT  
		Size: 43.8 MB (43827830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1953dc5894daaa049dec32f74eff46c27989cfc43b5a37a0cbe0bab52dbbd15`  
		Last Modified: Fri, 03 Aug 2018 11:31:43 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135f55af476463af2427b6053b122bf7b7131eb92eb514de460c7a48b3ebda4`  
		Last Modified: Fri, 03 Aug 2018 11:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:83d1210dcf3ee52eac311f6de16c5323c6caf0ce99d196bfb5ad4d08be937f47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116739106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de83b19fd5b9810202e8c752d8ee9cbddbc958a3866ffff1a538c662b4f1e0da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
# Wed, 01 Aug 2018 09:30:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 01 Aug 2018 09:31:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:31:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 09:33:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 01 Aug 2018 09:34:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 01 Aug 2018 09:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:39:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 01 Aug 2018 09:39:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 09:39:40 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 09:39:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 09:40:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:29:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:29:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:29:48 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:29:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:30:00 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:30:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7f244e1eb2d7ae9c206b7e15ed463a56813514adadf66ab17150ea8afa699c`  
		Last Modified: Wed, 01 Aug 2018 09:49:52 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c1de394e251c65b2f9455c61f113108e0181b5b441fba0f78e4d003dbdf1e`  
		Last Modified: Wed, 01 Aug 2018 09:49:43 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4edbcd4ecd287367cead8828d1022e2fd6d8b05993c4d2766bd06b245a22dc0`  
		Last Modified: Wed, 01 Aug 2018 09:49:45 GMT  
		Size: 1.5 MB (1545358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0170b04161ba80784a575287a2475204c6fc1239756c5b51f46118344e35c9`  
		Last Modified: Wed, 01 Aug 2018 09:49:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cbfe069dd9fd2fe4f193ec5b0a189e3b0a71b130c6fde1188aeafea1862b7b`  
		Last Modified: Wed, 01 Aug 2018 09:49:46 GMT  
		Size: 4.3 MB (4288001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f88e15d48d949cb7c816e05672dcd8de3c408cae6ee4c4fffc568bd23ee4d`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa80aea40984b91ffdc00b77d655c08ba3f559c64409543e18d9e22e96cbed`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ef8494c73bb8655deabffedd29d64b2f89bcf802ba99dea8baf915776b740d`  
		Last Modified: Fri, 03 Aug 2018 09:32:12 GMT  
		Size: 36.2 MB (36196188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ead9ff91da1c3254063337e99cd752328cecb7126ffbd7fd81d8d471e40c5`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5beade9b1ea9994c07b94a1eea3e82a47fdf5b86bb766cc48d16e687feaec13`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.61`

```console
$ docker pull mariadb@sha256:73bbd2c3917338099351175eaa2ff8e6dc147cb61d11c51da0d04698486bf3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.61` - linux; amd64

```console
$ docker pull mariadb@sha256:281bbce6d547c69662a3038e9be1fc536438d9a32b15fa60bf7ae57ceccb0ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ef961ebeb29ac9ea36e0b99ed42f66c366e0a79e1e4ac89cdfb6ef7ba92c4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:43:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:43:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:43:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:43:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:43:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 22 Aug 2018 18:43:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:44:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:44:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:44:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:44:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:44:19 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:44:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43a16d8f549e6a9a97711e202444104ce9cd639a1b7a9747870dab81f40428e`  
		Last Modified: Wed, 22 Aug 2018 18:54:50 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02ad60e3b2c9a4c49e7907f734a2ea7ff5544c7a2f8c59780de914e9e051ab`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d110f2a8c7cbcdc4567f4cc84c69286393e26f867a6368aedf0f00b758bf05`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 1.6 MB (1572188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffc8cf577dab0caf3aa1ac1a6f8d4752ee0cf457dbae467d975f3edc3774875`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd19474723dfbec5e14179929dae8e565b0477c60ef27def42e623c40858452d`  
		Last Modified: Wed, 22 Aug 2018 18:54:47 GMT  
		Size: 4.3 MB (4261208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eb92635a02439df352ffd224904f013d0e30ac6583528dd9f6233d0daebb24`  
		Last Modified: Wed, 22 Aug 2018 18:54:44 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee08be00c78157f083fd7577424b864eb590d8d0e6c48f95b4b02b0400e333`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e591b49f3be984cec6e7cc49fa1c95c9c6ea8068a98436f0d063595a71d1490`  
		Last Modified: Wed, 22 Aug 2018 18:54:58 GMT  
		Size: 45.3 MB (45278078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074267811740b61ebe9977433c08d5b6fb8e286bb0cc6d2f15a56b1126e10e57`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801461551d6c615e5e970ba627e37b7585d40a60662806cb7e24c19aec7f4564`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.61` - linux; 386

```console
$ docker pull mariadb@sha256:2f25ac55fe84f615593e35b7307d0e46777f0813af7d410223712672fe5726b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114553579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d414e9bcd55d22ada9e7216c1f2cfdb0b3a6771d81f39d886c11dece80977534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:04:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:04:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:05:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:05:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:05:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:05:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:05:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 11:11:05 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 11:11:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:28:43 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:28:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:28:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:28:45 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:28:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa8dacf386cc8d36fa3a4c7eb9a99625e32583f847e44d85c1029c6c13dd08`  
		Last Modified: Thu, 26 Jul 2018 11:08:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912f3e6db0a74abba9c4f99b784a960a22d20d0e0c02bd565801bd689c38d4`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31f321cc3bdabd237b133aef9224458624ce2efb79f175a5a3925706cdac166`  
		Last Modified: Thu, 26 Jul 2018 11:08:56 GMT  
		Size: 1.6 MB (1552219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a6501b17cc7718f8220bac093c05fab540a0c85ae340b18644f0a2a2b6912`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f1b40727a1f9ad7d1e5b7de9636083fdda70254ef26b44562dab1088cd487`  
		Last Modified: Thu, 26 Jul 2018 11:08:57 GMT  
		Size: 4.2 MB (4248000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2812527c01bcd5840b0d83700fd8160613dacdc0c3098b0188a5a58cf6e9fd9a`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6720474f2495220d8670e264be99a57d127d15f9655ecb7a84ef136cbbeb1ee`  
		Last Modified: Wed, 01 Aug 2018 11:12:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d8c6cfab7e3f40dd264b3485c029689d53f14ea22d6f55f35c8876c5dbd482`  
		Last Modified: Fri, 03 Aug 2018 11:32:01 GMT  
		Size: 43.8 MB (43827830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1953dc5894daaa049dec32f74eff46c27989cfc43b5a37a0cbe0bab52dbbd15`  
		Last Modified: Fri, 03 Aug 2018 11:31:43 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135f55af476463af2427b6053b122bf7b7131eb92eb514de460c7a48b3ebda4`  
		Last Modified: Fri, 03 Aug 2018 11:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.61` - linux; ppc64le

```console
$ docker pull mariadb@sha256:83d1210dcf3ee52eac311f6de16c5323c6caf0ce99d196bfb5ad4d08be937f47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116739106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de83b19fd5b9810202e8c752d8ee9cbddbc958a3866ffff1a538c662b4f1e0da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
# Wed, 01 Aug 2018 09:30:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 01 Aug 2018 09:31:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:31:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 09:33:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 01 Aug 2018 09:34:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 01 Aug 2018 09:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:39:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 01 Aug 2018 09:39:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 09:39:40 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 09:39:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 09:40:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:29:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:29:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:29:48 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:29:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:30:00 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:30:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7f244e1eb2d7ae9c206b7e15ed463a56813514adadf66ab17150ea8afa699c`  
		Last Modified: Wed, 01 Aug 2018 09:49:52 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c1de394e251c65b2f9455c61f113108e0181b5b441fba0f78e4d003dbdf1e`  
		Last Modified: Wed, 01 Aug 2018 09:49:43 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4edbcd4ecd287367cead8828d1022e2fd6d8b05993c4d2766bd06b245a22dc0`  
		Last Modified: Wed, 01 Aug 2018 09:49:45 GMT  
		Size: 1.5 MB (1545358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0170b04161ba80784a575287a2475204c6fc1239756c5b51f46118344e35c9`  
		Last Modified: Wed, 01 Aug 2018 09:49:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cbfe069dd9fd2fe4f193ec5b0a189e3b0a71b130c6fde1188aeafea1862b7b`  
		Last Modified: Wed, 01 Aug 2018 09:49:46 GMT  
		Size: 4.3 MB (4288001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f88e15d48d949cb7c816e05672dcd8de3c408cae6ee4c4fffc568bd23ee4d`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa80aea40984b91ffdc00b77d655c08ba3f559c64409543e18d9e22e96cbed`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ef8494c73bb8655deabffedd29d64b2f89bcf802ba99dea8baf915776b740d`  
		Last Modified: Fri, 03 Aug 2018 09:32:12 GMT  
		Size: 36.2 MB (36196188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ead9ff91da1c3254063337e99cd752328cecb7126ffbd7fd81d8d471e40c5`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5beade9b1ea9994c07b94a1eea3e82a47fdf5b86bb766cc48d16e687feaec13`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.61-trusty`

```console
$ docker pull mariadb@sha256:73bbd2c3917338099351175eaa2ff8e6dc147cb61d11c51da0d04698486bf3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.61-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:281bbce6d547c69662a3038e9be1fc536438d9a32b15fa60bf7ae57ceccb0ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ef961ebeb29ac9ea36e0b99ed42f66c366e0a79e1e4ac89cdfb6ef7ba92c4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:43:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:43:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:43:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:43:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:43:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 22 Aug 2018 18:43:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:44:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:44:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:44:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:44:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:44:19 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:44:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43a16d8f549e6a9a97711e202444104ce9cd639a1b7a9747870dab81f40428e`  
		Last Modified: Wed, 22 Aug 2018 18:54:50 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02ad60e3b2c9a4c49e7907f734a2ea7ff5544c7a2f8c59780de914e9e051ab`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d110f2a8c7cbcdc4567f4cc84c69286393e26f867a6368aedf0f00b758bf05`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 1.6 MB (1572188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffc8cf577dab0caf3aa1ac1a6f8d4752ee0cf457dbae467d975f3edc3774875`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd19474723dfbec5e14179929dae8e565b0477c60ef27def42e623c40858452d`  
		Last Modified: Wed, 22 Aug 2018 18:54:47 GMT  
		Size: 4.3 MB (4261208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eb92635a02439df352ffd224904f013d0e30ac6583528dd9f6233d0daebb24`  
		Last Modified: Wed, 22 Aug 2018 18:54:44 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee08be00c78157f083fd7577424b864eb590d8d0e6c48f95b4b02b0400e333`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e591b49f3be984cec6e7cc49fa1c95c9c6ea8068a98436f0d063595a71d1490`  
		Last Modified: Wed, 22 Aug 2018 18:54:58 GMT  
		Size: 45.3 MB (45278078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074267811740b61ebe9977433c08d5b6fb8e286bb0cc6d2f15a56b1126e10e57`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801461551d6c615e5e970ba627e37b7585d40a60662806cb7e24c19aec7f4564`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.61-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:2f25ac55fe84f615593e35b7307d0e46777f0813af7d410223712672fe5726b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114553579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d414e9bcd55d22ada9e7216c1f2cfdb0b3a6771d81f39d886c11dece80977534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:04:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:04:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:05:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:05:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:05:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:05:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:05:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 11:11:05 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 11:11:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:28:43 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:28:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:28:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:28:45 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:28:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa8dacf386cc8d36fa3a4c7eb9a99625e32583f847e44d85c1029c6c13dd08`  
		Last Modified: Thu, 26 Jul 2018 11:08:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912f3e6db0a74abba9c4f99b784a960a22d20d0e0c02bd565801bd689c38d4`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31f321cc3bdabd237b133aef9224458624ce2efb79f175a5a3925706cdac166`  
		Last Modified: Thu, 26 Jul 2018 11:08:56 GMT  
		Size: 1.6 MB (1552219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a6501b17cc7718f8220bac093c05fab540a0c85ae340b18644f0a2a2b6912`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f1b40727a1f9ad7d1e5b7de9636083fdda70254ef26b44562dab1088cd487`  
		Last Modified: Thu, 26 Jul 2018 11:08:57 GMT  
		Size: 4.2 MB (4248000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2812527c01bcd5840b0d83700fd8160613dacdc0c3098b0188a5a58cf6e9fd9a`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6720474f2495220d8670e264be99a57d127d15f9655ecb7a84ef136cbbeb1ee`  
		Last Modified: Wed, 01 Aug 2018 11:12:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d8c6cfab7e3f40dd264b3485c029689d53f14ea22d6f55f35c8876c5dbd482`  
		Last Modified: Fri, 03 Aug 2018 11:32:01 GMT  
		Size: 43.8 MB (43827830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1953dc5894daaa049dec32f74eff46c27989cfc43b5a37a0cbe0bab52dbbd15`  
		Last Modified: Fri, 03 Aug 2018 11:31:43 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135f55af476463af2427b6053b122bf7b7131eb92eb514de460c7a48b3ebda4`  
		Last Modified: Fri, 03 Aug 2018 11:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.61-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:83d1210dcf3ee52eac311f6de16c5323c6caf0ce99d196bfb5ad4d08be937f47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116739106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de83b19fd5b9810202e8c752d8ee9cbddbc958a3866ffff1a538c662b4f1e0da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
# Wed, 01 Aug 2018 09:30:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 01 Aug 2018 09:31:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:31:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 09:33:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 01 Aug 2018 09:34:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 01 Aug 2018 09:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:39:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 01 Aug 2018 09:39:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 09:39:40 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 09:39:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 09:40:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:29:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:29:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:29:48 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:29:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:30:00 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:30:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7f244e1eb2d7ae9c206b7e15ed463a56813514adadf66ab17150ea8afa699c`  
		Last Modified: Wed, 01 Aug 2018 09:49:52 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c1de394e251c65b2f9455c61f113108e0181b5b441fba0f78e4d003dbdf1e`  
		Last Modified: Wed, 01 Aug 2018 09:49:43 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4edbcd4ecd287367cead8828d1022e2fd6d8b05993c4d2766bd06b245a22dc0`  
		Last Modified: Wed, 01 Aug 2018 09:49:45 GMT  
		Size: 1.5 MB (1545358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0170b04161ba80784a575287a2475204c6fc1239756c5b51f46118344e35c9`  
		Last Modified: Wed, 01 Aug 2018 09:49:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cbfe069dd9fd2fe4f193ec5b0a189e3b0a71b130c6fde1188aeafea1862b7b`  
		Last Modified: Wed, 01 Aug 2018 09:49:46 GMT  
		Size: 4.3 MB (4288001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f88e15d48d949cb7c816e05672dcd8de3c408cae6ee4c4fffc568bd23ee4d`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa80aea40984b91ffdc00b77d655c08ba3f559c64409543e18d9e22e96cbed`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ef8494c73bb8655deabffedd29d64b2f89bcf802ba99dea8baf915776b740d`  
		Last Modified: Fri, 03 Aug 2018 09:32:12 GMT  
		Size: 36.2 MB (36196188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ead9ff91da1c3254063337e99cd752328cecb7126ffbd7fd81d8d471e40c5`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5beade9b1ea9994c07b94a1eea3e82a47fdf5b86bb766cc48d16e687feaec13`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:73bbd2c3917338099351175eaa2ff8e6dc147cb61d11c51da0d04698486bf3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:281bbce6d547c69662a3038e9be1fc536438d9a32b15fa60bf7ae57ceccb0ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ef961ebeb29ac9ea36e0b99ed42f66c366e0a79e1e4ac89cdfb6ef7ba92c4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:43:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:43:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:43:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:43:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:43:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 22 Aug 2018 18:43:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:44:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:44:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:44:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:44:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:44:19 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:44:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43a16d8f549e6a9a97711e202444104ce9cd639a1b7a9747870dab81f40428e`  
		Last Modified: Wed, 22 Aug 2018 18:54:50 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02ad60e3b2c9a4c49e7907f734a2ea7ff5544c7a2f8c59780de914e9e051ab`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d110f2a8c7cbcdc4567f4cc84c69286393e26f867a6368aedf0f00b758bf05`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 1.6 MB (1572188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffc8cf577dab0caf3aa1ac1a6f8d4752ee0cf457dbae467d975f3edc3774875`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd19474723dfbec5e14179929dae8e565b0477c60ef27def42e623c40858452d`  
		Last Modified: Wed, 22 Aug 2018 18:54:47 GMT  
		Size: 4.3 MB (4261208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eb92635a02439df352ffd224904f013d0e30ac6583528dd9f6233d0daebb24`  
		Last Modified: Wed, 22 Aug 2018 18:54:44 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee08be00c78157f083fd7577424b864eb590d8d0e6c48f95b4b02b0400e333`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e591b49f3be984cec6e7cc49fa1c95c9c6ea8068a98436f0d063595a71d1490`  
		Last Modified: Wed, 22 Aug 2018 18:54:58 GMT  
		Size: 45.3 MB (45278078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074267811740b61ebe9977433c08d5b6fb8e286bb0cc6d2f15a56b1126e10e57`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801461551d6c615e5e970ba627e37b7585d40a60662806cb7e24c19aec7f4564`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:2f25ac55fe84f615593e35b7307d0e46777f0813af7d410223712672fe5726b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114553579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d414e9bcd55d22ada9e7216c1f2cfdb0b3a6771d81f39d886c11dece80977534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:04:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:04:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:05:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:05:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:05:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:05:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:05:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 11:11:05 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 11:11:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:28:43 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:28:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:28:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:28:45 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:28:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa8dacf386cc8d36fa3a4c7eb9a99625e32583f847e44d85c1029c6c13dd08`  
		Last Modified: Thu, 26 Jul 2018 11:08:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912f3e6db0a74abba9c4f99b784a960a22d20d0e0c02bd565801bd689c38d4`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31f321cc3bdabd237b133aef9224458624ce2efb79f175a5a3925706cdac166`  
		Last Modified: Thu, 26 Jul 2018 11:08:56 GMT  
		Size: 1.6 MB (1552219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a6501b17cc7718f8220bac093c05fab540a0c85ae340b18644f0a2a2b6912`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f1b40727a1f9ad7d1e5b7de9636083fdda70254ef26b44562dab1088cd487`  
		Last Modified: Thu, 26 Jul 2018 11:08:57 GMT  
		Size: 4.2 MB (4248000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2812527c01bcd5840b0d83700fd8160613dacdc0c3098b0188a5a58cf6e9fd9a`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6720474f2495220d8670e264be99a57d127d15f9655ecb7a84ef136cbbeb1ee`  
		Last Modified: Wed, 01 Aug 2018 11:12:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d8c6cfab7e3f40dd264b3485c029689d53f14ea22d6f55f35c8876c5dbd482`  
		Last Modified: Fri, 03 Aug 2018 11:32:01 GMT  
		Size: 43.8 MB (43827830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1953dc5894daaa049dec32f74eff46c27989cfc43b5a37a0cbe0bab52dbbd15`  
		Last Modified: Fri, 03 Aug 2018 11:31:43 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135f55af476463af2427b6053b122bf7b7131eb92eb514de460c7a48b3ebda4`  
		Last Modified: Fri, 03 Aug 2018 11:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:83d1210dcf3ee52eac311f6de16c5323c6caf0ce99d196bfb5ad4d08be937f47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116739106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de83b19fd5b9810202e8c752d8ee9cbddbc958a3866ffff1a538c662b4f1e0da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
# Wed, 01 Aug 2018 09:30:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 01 Aug 2018 09:31:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:31:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 09:33:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 01 Aug 2018 09:34:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 01 Aug 2018 09:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:39:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 01 Aug 2018 09:39:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 09:39:40 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 09:39:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 09:40:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:29:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:29:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:29:48 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:29:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:30:00 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:30:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7f244e1eb2d7ae9c206b7e15ed463a56813514adadf66ab17150ea8afa699c`  
		Last Modified: Wed, 01 Aug 2018 09:49:52 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c1de394e251c65b2f9455c61f113108e0181b5b441fba0f78e4d003dbdf1e`  
		Last Modified: Wed, 01 Aug 2018 09:49:43 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4edbcd4ecd287367cead8828d1022e2fd6d8b05993c4d2766bd06b245a22dc0`  
		Last Modified: Wed, 01 Aug 2018 09:49:45 GMT  
		Size: 1.5 MB (1545358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0170b04161ba80784a575287a2475204c6fc1239756c5b51f46118344e35c9`  
		Last Modified: Wed, 01 Aug 2018 09:49:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cbfe069dd9fd2fe4f193ec5b0a189e3b0a71b130c6fde1188aeafea1862b7b`  
		Last Modified: Wed, 01 Aug 2018 09:49:46 GMT  
		Size: 4.3 MB (4288001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f88e15d48d949cb7c816e05672dcd8de3c408cae6ee4c4fffc568bd23ee4d`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa80aea40984b91ffdc00b77d655c08ba3f559c64409543e18d9e22e96cbed`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ef8494c73bb8655deabffedd29d64b2f89bcf802ba99dea8baf915776b740d`  
		Last Modified: Fri, 03 Aug 2018 09:32:12 GMT  
		Size: 36.2 MB (36196188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ead9ff91da1c3254063337e99cd752328cecb7126ffbd7fd81d8d471e40c5`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5beade9b1ea9994c07b94a1eea3e82a47fdf5b86bb766cc48d16e687feaec13`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:73bbd2c3917338099351175eaa2ff8e6dc147cb61d11c51da0d04698486bf3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:281bbce6d547c69662a3038e9be1fc536438d9a32b15fa60bf7ae57ceccb0ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ef961ebeb29ac9ea36e0b99ed42f66c366e0a79e1e4ac89cdfb6ef7ba92c4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:43:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:43:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:43:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:43:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:43:51 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:43:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 22 Aug 2018 18:43:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 22 Aug 2018 18:43:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:44:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:44:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:44:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:44:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:44:19 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:44:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43a16d8f549e6a9a97711e202444104ce9cd639a1b7a9747870dab81f40428e`  
		Last Modified: Wed, 22 Aug 2018 18:54:50 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02ad60e3b2c9a4c49e7907f734a2ea7ff5544c7a2f8c59780de914e9e051ab`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d110f2a8c7cbcdc4567f4cc84c69286393e26f867a6368aedf0f00b758bf05`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 1.6 MB (1572188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffc8cf577dab0caf3aa1ac1a6f8d4752ee0cf457dbae467d975f3edc3774875`  
		Last Modified: Wed, 22 Aug 2018 18:54:46 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd19474723dfbec5e14179929dae8e565b0477c60ef27def42e623c40858452d`  
		Last Modified: Wed, 22 Aug 2018 18:54:47 GMT  
		Size: 4.3 MB (4261208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eb92635a02439df352ffd224904f013d0e30ac6583528dd9f6233d0daebb24`  
		Last Modified: Wed, 22 Aug 2018 18:54:44 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ee08be00c78157f083fd7577424b864eb590d8d0e6c48f95b4b02b0400e333`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e591b49f3be984cec6e7cc49fa1c95c9c6ea8068a98436f0d063595a71d1490`  
		Last Modified: Wed, 22 Aug 2018 18:54:58 GMT  
		Size: 45.3 MB (45278078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074267811740b61ebe9977433c08d5b6fb8e286bb0cc6d2f15a56b1126e10e57`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801461551d6c615e5e970ba627e37b7585d40a60662806cb7e24c19aec7f4564`  
		Last Modified: Wed, 22 Aug 2018 18:54:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:2f25ac55fe84f615593e35b7307d0e46777f0813af7d410223712672fe5726b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114553579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d414e9bcd55d22ada9e7216c1f2cfdb0b3a6771d81f39d886c11dece80977534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:00 GMT
ADD file:9e5275a290e6d296c12bec1fbb5895f27e2cd30fa99f943a7bd054cc1ab13c41 in / 
# Tue, 17 Jul 2018 12:34:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:07 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:04:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:04:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:04:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:05:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:05:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:05:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:05:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:05:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 11:11:05 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 11:11:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 11:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 11:28:43 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 11:28:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 11:28:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 11:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 11:28:45 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 11:28:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ab33d6fb6a425f8565d20c8200775a8253affa499434e807e82d34ff75f993ef`  
		Last Modified: Tue, 17 Jul 2018 12:38:23 GMT  
		Size: 64.8 MB (64828853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304388779e89c355fa454e92f0bfdbc9a51f805c7c3261f824a24501a1d5f27`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b8e4a552e5f9ef1b7023de78294f4437519e843b9c38411e186b647cb785`  
		Last Modified: Tue, 17 Jul 2018 12:38:01 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dab88b2846e6ae8a9690b22ae571e3df003de93cfc0f766c55c652b0ae5c05`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dcdf1805efe897e563a731a0275c87b37216222f6cea534279de891e66d554`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa8dacf386cc8d36fa3a4c7eb9a99625e32583f847e44d85c1029c6c13dd08`  
		Last Modified: Thu, 26 Jul 2018 11:08:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912f3e6db0a74abba9c4f99b784a960a22d20d0e0c02bd565801bd689c38d4`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31f321cc3bdabd237b133aef9224458624ce2efb79f175a5a3925706cdac166`  
		Last Modified: Thu, 26 Jul 2018 11:08:56 GMT  
		Size: 1.6 MB (1552219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a6501b17cc7718f8220bac093c05fab540a0c85ae340b18644f0a2a2b6912`  
		Last Modified: Thu, 26 Jul 2018 11:08:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f1b40727a1f9ad7d1e5b7de9636083fdda70254ef26b44562dab1088cd487`  
		Last Modified: Thu, 26 Jul 2018 11:08:57 GMT  
		Size: 4.2 MB (4248000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2812527c01bcd5840b0d83700fd8160613dacdc0c3098b0188a5a58cf6e9fd9a`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6720474f2495220d8670e264be99a57d127d15f9655ecb7a84ef136cbbeb1ee`  
		Last Modified: Wed, 01 Aug 2018 11:12:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d8c6cfab7e3f40dd264b3485c029689d53f14ea22d6f55f35c8876c5dbd482`  
		Last Modified: Fri, 03 Aug 2018 11:32:01 GMT  
		Size: 43.8 MB (43827830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1953dc5894daaa049dec32f74eff46c27989cfc43b5a37a0cbe0bab52dbbd15`  
		Last Modified: Fri, 03 Aug 2018 11:31:43 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c135f55af476463af2427b6053b122bf7b7131eb92eb514de460c7a48b3ebda4`  
		Last Modified: Fri, 03 Aug 2018 11:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:83d1210dcf3ee52eac311f6de16c5323c6caf0ce99d196bfb5ad4d08be937f47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116739106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de83b19fd5b9810202e8c752d8ee9cbddbc958a3866ffff1a538c662b4f1e0da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:23:12 GMT
ADD file:a3622ab54a3ec0e60ecdbe651d828e486be7eda95666739a694b2b5fb2098dd7 in / 
# Tue, 17 Jul 2018 11:23:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:23:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:23:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:23:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:24:00 GMT
CMD ["/bin/bash"]
# Wed, 01 Aug 2018 09:30:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 01 Aug 2018 09:31:17 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:31:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 09:33:55 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 01 Aug 2018 09:34:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 01 Aug 2018 09:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:39:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 01 Aug 2018 09:39:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 09:39:40 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 01 Aug 2018 09:39:53 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 01 Aug 2018 09:40:06 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:29:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:29:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:29:48 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:29:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:30:00 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:30:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d5124b458d37613f04a7e8f2a5cd712d7a65fd7dcdc5ff59c0bc360c28a7082`  
		Last Modified: Tue, 17 Jul 2018 11:28:20 GMT  
		Size: 74.6 MB (74613945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f01fb764dc8ee608beb1d157d5bab1b93ec33a1642cdb5b23d4fb14788b51d`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e7db04aabb4119934665db3e91e47977c805a1c7b3f36257d9b1e551c2ea0`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45f75935631971e625972a833f02569bc9fe8ba336073ea27f0746bfa04e2e9`  
		Last Modified: Tue, 17 Jul 2018 11:28:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7c6aa1e92081ecdc264d9e6dc08b2e8747bbf02234c453b2e498a278ea10b7`  
		Last Modified: Tue, 17 Jul 2018 11:28:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7f244e1eb2d7ae9c206b7e15ed463a56813514adadf66ab17150ea8afa699c`  
		Last Modified: Wed, 01 Aug 2018 09:49:52 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c1de394e251c65b2f9455c61f113108e0181b5b441fba0f78e4d003dbdf1e`  
		Last Modified: Wed, 01 Aug 2018 09:49:43 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4edbcd4ecd287367cead8828d1022e2fd6d8b05993c4d2766bd06b245a22dc0`  
		Last Modified: Wed, 01 Aug 2018 09:49:45 GMT  
		Size: 1.5 MB (1545358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0170b04161ba80784a575287a2475204c6fc1239756c5b51f46118344e35c9`  
		Last Modified: Wed, 01 Aug 2018 09:49:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cbfe069dd9fd2fe4f193ec5b0a189e3b0a71b130c6fde1188aeafea1862b7b`  
		Last Modified: Wed, 01 Aug 2018 09:49:46 GMT  
		Size: 4.3 MB (4288001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f88e15d48d949cb7c816e05672dcd8de3c408cae6ee4c4fffc568bd23ee4d`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 25.1 KB (25137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffa80aea40984b91ffdc00b77d655c08ba3f559c64409543e18d9e22e96cbed`  
		Last Modified: Wed, 01 Aug 2018 09:49:35 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ef8494c73bb8655deabffedd29d64b2f89bcf802ba99dea8baf915776b740d`  
		Last Modified: Fri, 03 Aug 2018 09:32:12 GMT  
		Size: 36.2 MB (36196188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ead9ff91da1c3254063337e99cd752328cecb7126ffbd7fd81d8d471e40c5`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5beade9b1ea9994c07b94a1eea3e82a47fdf5b86bb766cc48d16e687feaec13`  
		Last Modified: Fri, 03 Aug 2018 09:31:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:33b7d6222348a0a1e7a7753ee65f6e1658deb500b1c096b45547a16dd2b57fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:cce5e3d65345652b722fec8ce0d85650f31da78ee4815c764450092848bddaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d4ebaca2a6cf4679676608529c4700542d455d8e5767f6d160078a43eb62f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 22 Aug 2018 18:37:17 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:38:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:38:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:38:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:38:22 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:38:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c561989800a27eeb09e3f45eaf69c75773ef00dbbed1db536e2709da03f9805`  
		Last Modified: Wed, 22 Aug 2018 18:45:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ffda50aea95315e6a82269e8a3cf616793369e22d744a3df9f4d344278838b`  
		Last Modified: Wed, 22 Aug 2018 18:45:30 GMT  
		Size: 74.2 MB (74183544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7acb6945c1cae78b915564b46ccfa59c0e7c2aace175efaf7b1fb51c392a1d`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03680e4e0d7c6d9b8b90aab89ffb4690fa966036400e106a88fe54bd6e760180`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cb273c8df5f23a9950a26a63720791449cd5fc2f1caf2cc5db78ccfddc66c67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109554942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deb23c447058ce2e302d24f4fb17b2b36919b07640608a4decc548708152ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:30:07 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 17 Aug 2018 08:58:59 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Fri, 17 Aug 2018 08:59:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:00:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:00:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:00:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:00:46 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:00:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a60edd2028711f0e81bf91f71fb20e9416560ee8de076e235d30db34c3e56`  
		Last Modified: Fri, 17 Aug 2018 09:04:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c350c862a6f4ec47d6c15583253e3506df1e5ff5d6da2e7fa26265d8012a660e`  
		Last Modified: Fri, 17 Aug 2018 09:04:58 GMT  
		Size: 73.1 MB (73072302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae0467666f66a0d95b25a5e7079e73433e11b5f7e50418488d1fc0d2e44e7a`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8935fadb6c36f825c584dcdf689b4104c75d1e73f1a5dd8a0b4a7642715ffe`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:036d3069afbf1ed91c3a7c1665caadec34449a8b826a83b73e4836462a2cabc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121566072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ba75f342a1fbe87d3cbf5280e70a8d796806f8b1c2a923ed6b3924ff23e21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:30:50 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 21 Aug 2018 18:30:51 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Tue, 21 Aug 2018 18:30:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:32:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:32:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:32:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:32:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:32:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:32:25 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:32:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1463ba7afc343529ca6ddc18a466919ff7198090afdca60327327347d3b678`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6a2ec4235a7c8af3bbbb555c589fb77a4c732f6df00b8c6310a17104a0784e`  
		Last Modified: Tue, 21 Aug 2018 18:42:53 GMT  
		Size: 77.1 MB (77085251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934574fdd3d8eef172037bca672b0b67b297ff789e172b05aeb1bdd9b131ebb`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791da7fe722358b4459f4bee42503c0c8d273066a213aed674f97f39f785c3b2`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:33b7d6222348a0a1e7a7753ee65f6e1658deb500b1c096b45547a16dd2b57fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:cce5e3d65345652b722fec8ce0d85650f31da78ee4815c764450092848bddaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d4ebaca2a6cf4679676608529c4700542d455d8e5767f6d160078a43eb62f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:36:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 22 Aug 2018 18:36:43 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:36:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Aug 2018 18:36:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 22 Aug 2018 18:37:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 22 Aug 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:37:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 22 Aug 2018 18:37:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 22 Aug 2018 18:37:16 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 22 Aug 2018 18:37:17 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 22 Aug 2018 18:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 22 Aug 2018 18:38:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 22 Aug 2018 18:38:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 22 Aug 2018 18:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 22 Aug 2018 18:38:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Aug 2018 18:38:22 GMT
EXPOSE 3306/tcp
# Wed, 22 Aug 2018 18:38:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c52a444d9eb4200344aa5bef03cc5687e52738739a5e7340bd5179503db6525`  
		Last Modified: Wed, 22 Aug 2018 18:45:15 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e397cc22f5f4a93ac4c4c282a889cddbd6f1a04be0fd9f00e99e11b96e99ab32`  
		Last Modified: Wed, 22 Aug 2018 18:45:09 GMT  
		Size: 4.8 MB (4803407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a144e0affdcfd474eb3a7785d588aa7dde66cc34569b0b7a81ff8e79c62e4`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 862.7 KB (862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933696f797e8f60f805941d2fc5cf95f2cb14ee647807bff6d361babd403e32b`  
		Last Modified: Wed, 22 Aug 2018 18:45:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac35983b4cee7e84071f22d5ea87e95697160e1150a114bc475b56cbb1c8f6`  
		Last Modified: Wed, 22 Aug 2018 18:45:07 GMT  
		Size: 3.0 MB (2956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4745123222d717a90870607a8571a8299410cb584abd232164b47522d7c098fe`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c561989800a27eeb09e3f45eaf69c75773ef00dbbed1db536e2709da03f9805`  
		Last Modified: Wed, 22 Aug 2018 18:45:04 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ffda50aea95315e6a82269e8a3cf616793369e22d744a3df9f4d344278838b`  
		Last Modified: Wed, 22 Aug 2018 18:45:30 GMT  
		Size: 74.2 MB (74183544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7acb6945c1cae78b915564b46ccfa59c0e7c2aace175efaf7b1fb51c392a1d`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03680e4e0d7c6d9b8b90aab89ffb4690fa966036400e106a88fe54bd6e760180`  
		Last Modified: Wed, 22 Aug 2018 18:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cb273c8df5f23a9950a26a63720791449cd5fc2f1caf2cc5db78ccfddc66c67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109554942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deb23c447058ce2e302d24f4fb17b2b36919b07640608a4decc548708152ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:25:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 27 Jul 2018 13:27:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:28:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 13:29:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Jul 2018 13:29:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 13:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 27 Jul 2018 13:30:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 13:30:07 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 17 Aug 2018 08:58:59 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Fri, 17 Aug 2018 08:59:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 17 Aug 2018 09:00:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 17 Aug 2018 09:00:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 17 Aug 2018 09:00:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 17 Aug 2018 09:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Aug 2018 09:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 09:00:46 GMT
EXPOSE 3306/tcp
# Fri, 17 Aug 2018 09:00:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd838d29340c90910aaa507af9c636fd89a48719548ef397b1815727aee7ecd8`  
		Last Modified: Fri, 27 Jul 2018 13:43:38 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ccef18580cd97858443aac747430ca551c7b1dd170f127b46458edfc00793c`  
		Last Modified: Fri, 27 Jul 2018 13:43:39 GMT  
		Size: 4.4 MB (4380231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d4d89791748c4764d49027788cb45ceaabedc79ee856224bef2c8386ad93b2`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 829.7 KB (829687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9b3b0dff5e7950dee286a7acad0b89f4f77b483617000769a01d7d2de2a0f`  
		Last Modified: Fri, 27 Jul 2018 13:43:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7645844da61edc84ddad452424e59ee1b678c9f15a6c096f0e200c418e6ddd`  
		Last Modified: Fri, 27 Jul 2018 13:43:36 GMT  
		Size: 2.7 MB (2698436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64a242f69b5de40c798a6faf08b9ba576056bce42fda3fc265abc602e7189`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a60edd2028711f0e81bf91f71fb20e9416560ee8de076e235d30db34c3e56`  
		Last Modified: Fri, 17 Aug 2018 09:04:31 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c350c862a6f4ec47d6c15583253e3506df1e5ff5d6da2e7fa26265d8012a660e`  
		Last Modified: Fri, 17 Aug 2018 09:04:58 GMT  
		Size: 73.1 MB (73072302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae0467666f66a0d95b25a5e7079e73433e11b5f7e50418488d1fc0d2e44e7a`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8935fadb6c36f825c584dcdf689b4104c75d1e73f1a5dd8a0b4a7642715ffe`  
		Last Modified: Fri, 17 Aug 2018 09:04:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:036d3069afbf1ed91c3a7c1665caadec34449a8b826a83b73e4836462a2cabc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121566072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ba75f342a1fbe87d3cbf5280e70a8d796806f8b1c2a923ed6b3924ff23e21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Aug 2018 18:03:28 GMT
ADD file:82798c491407745c1154b41d58fb93a94096f3ad5b01d5f48d3ee361b16e0ad7 in / 
# Tue, 21 Aug 2018 18:03:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:03:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:03:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:03:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:03:43 GMT
CMD ["/bin/bash"]
# Tue, 21 Aug 2018 18:26:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Aug 2018 18:28:07 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:28:07 GMT
ENV GOSU_VERSION=1.10
# Tue, 21 Aug 2018 18:29:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 21 Aug 2018 18:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Aug 2018 18:30:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:30:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Aug 2018 18:30:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Aug 2018 18:30:50 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 21 Aug 2018 18:30:51 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Tue, 21 Aug 2018 18:30:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Aug 2018 18:32:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Aug 2018 18:32:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Aug 2018 18:32:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 21 Aug 2018 18:32:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Aug 2018 18:32:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Aug 2018 18:32:25 GMT
EXPOSE 3306/tcp
# Tue, 21 Aug 2018 18:32:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7620e02a76798695f19060289126fa57f6ed25d3969a85fd020d7c0499be71ad`  
		Last Modified: Tue, 21 Aug 2018 18:06:53 GMT  
		Size: 35.2 MB (35175653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ad0b56b89650cc1f709a4359f2bc1bdfaabce401a09485316a8dac16fc64b0`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555bfe36ad129f1bef944f8bd1582e2db361633745fb5eace0e779f7ff7e0df`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acd8c350f3bed5dc6f7bdcdf709152663a55d16738493b40b6d6a315f80481`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f16a59cef3be61cd1c9b513e1b4cb7d455d4c302cb3cae3d9a45ebcfa81ac5`  
		Last Modified: Tue, 21 Aug 2018 18:06:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e380d59ca526512fb727026531b2c7c4991daf90b6162208b5ac48477cd0b7`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d64c2361b0e124a3eb2bdf26c49db45fb1de4a46366b791b7d1ce5fe46ac91`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 5.6 MB (5602528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d79d9603f4a48dfe22d565a96afee4deec80b156369a30546dbdb491ad87a0`  
		Last Modified: Tue, 21 Aug 2018 18:42:34 GMT  
		Size: 831.4 KB (831391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6118baddd38418d39b6c9f2c35a1100e3fd4260c2e0b379eae8dc896956a6d2`  
		Last Modified: Tue, 21 Aug 2018 18:42:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f62ff0e087e5c154c9abc8dee04e36e74306d33d57d073322a1f9d34a0522`  
		Last Modified: Tue, 21 Aug 2018 18:42:36 GMT  
		Size: 2.8 MB (2838624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb80c792f593292da41fb9c57883d6f3f9e870dd878192840aac56c29d5be`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1463ba7afc343529ca6ddc18a466919ff7198090afdca60327327347d3b678`  
		Last Modified: Tue, 21 Aug 2018 18:42:30 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6a2ec4235a7c8af3bbbb555c589fb77a4c732f6df00b8c6310a17104a0784e`  
		Last Modified: Tue, 21 Aug 2018 18:42:53 GMT  
		Size: 77.1 MB (77085251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934574fdd3d8eef172037bca672b0b67b297ff789e172b05aeb1bdd9b131ebb`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791da7fe722358b4459f4bee42503c0c8d273066a213aed674f97f39f785c3b2`  
		Last Modified: Tue, 21 Aug 2018 18:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
