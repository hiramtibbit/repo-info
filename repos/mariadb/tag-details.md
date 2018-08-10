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
-	[`mariadb:10.2.16`](#mariadb10216)
-	[`mariadb:10.2.16-bionic`](#mariadb10216-bionic)
-	[`mariadb:10.2-bionic`](#mariadb102-bionic)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.8`](#mariadb1038)
-	[`mariadb:10.3.8-bionic`](#mariadb1038-bionic)
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
$ docker pull mariadb@sha256:edef80de393cf4a79504168c663f8b0c6b15060333e5a7d7aee3dc0a4de6e927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:9b60ca2975f7def2511e41ba690d04b6c137bcdf69bf40458dfd44fa31d145ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114487280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c73b3262fff7ac54635d58e13deb8cc8e224dddf3b2b0e2abfc0ad9d508f54c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 23:28:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:29:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:29:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:29:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:29:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:29:25 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf8ee7af181ecfed99540aa8718bfa106bb9e0cb2f89dce38bed02dc389ec3`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa500ed3b27c7dac758267a1dea66475aa658715ea631959d35d43130c5d7f7`  
		Last Modified: Thu, 26 Jul 2018 23:34:40 GMT  
		Size: 74.2 MB (74173284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632a62957830aaa6cdcd1659f1a2f401c5e561f252d9881e59020f641dfa7ae`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5b3adf01db9eead0e53842895e0dec4406e6be012d25399d86e3c85fed0ec`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:acf0b89aadd27084c72ad521ae4b630659e56304ec876be2665041361ea0369b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109549100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b53a53db18b6cd806eaf067d986ca4b4afa4bc87ac3fd7c15040454410616fc`
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
# Fri, 27 Jul 2018 13:30:08 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Fri, 27 Jul 2018 13:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:32:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:32:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:32:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:32:24 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:32:25 GMT
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
	-	`sha256:691c15736db6a170924f162ee63c6b1582489f7a990039199acf795aae6fd6b1`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed8bcd8c2f0303a6a05deae3e65fde8e8ddc63fb46c141420ec394a3bb6559`  
		Last Modified: Fri, 27 Jul 2018 13:44:01 GMT  
		Size: 73.1 MB (73066459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9a3892a2bc7cb339d0e93ed66c1a44e00b3f92b570918bc3a98768c7ec232`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b837b5873b40d6330e8383c8a2013ee67ab0becc71f7e87de821b98e484e0fc8`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:27ed397ef14a40cbe130aab5cb9513f763f19c1c5de79d3b543a2c0af4530489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123347650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c67c96ea2a4c9f89dd14b49b1d627992e525567c696af8fb2879d187ed4b411`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:58:52 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:58:56 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:59:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:57 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:05:04 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:33 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:05:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b4c938994d5c963e5d1b5f730b7eeea504e516bde1a732ff598d2f8a423c`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767ff2353958c8b501cda45d33bbf209ac9a806257dcdcad010ae9e68ff1b46`  
		Last Modified: Thu, 26 Jul 2018 10:16:18 GMT  
		Size: 79.0 MB (79014888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71633793a9e44f2e3f86177f21a8233d375fd8145d37db1cf46c968752a41837`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c72b4ed0dcf62352afa0bdfd1a755cd13582cf8a019cf5dabfbfa0bf817601`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:bd0e858770313cc0ced93af4ae642d0cf3eead153f43938f8237c0e57c994846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:b8baec939fd41313877eb6caeb5dad1561bca03d71af8b451dd2c15b47866d23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114770051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee27a1ca8062bb3ad7cb23b5bd4cdceeba5ec0e01345299cf7a0332a6c15bf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:32:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:32:12 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:32:12 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:32:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:32:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:32:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:32:47 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 02 Aug 2018 22:32:52 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 02 Aug 2018 22:32:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:34:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:34:18 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:34:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:34:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:34:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:34:20 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:34:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7cbe08452f5510c8b33780722d0633069fbaf47763942d27e6d265e9577397`  
		Last Modified: Thu, 26 Jul 2018 23:41:33 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b59ea863d39c3b8ac36ae14d713ca404159c214d57c814ae934f608471e512`  
		Last Modified: Thu, 26 Jul 2018 23:41:32 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43925d63482f4bf39620f01751905bf2491e5f6d6a0484fdab6f1ceee059152`  
		Last Modified: Thu, 26 Jul 2018 23:41:33 GMT  
		Size: 840.7 KB (840746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae71dd18b9ac9102ce90ef1845a0d22eed79d729c50bb3bb0738a27a0957386`  
		Last Modified: Thu, 26 Jul 2018 23:41:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fbafc9ff56e5fc3f8060c290fb4a2a6d65e23c6149b86341902092568f9c5e`  
		Last Modified: Thu, 26 Jul 2018 23:41:34 GMT  
		Size: 7.3 MB (7319780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea508fb15d5f53ad8715f3b1973372d692256818a550212a6ce9a5dcd855ac26`  
		Last Modified: Thu, 26 Jul 2018 23:41:30 GMT  
		Size: 25.1 KB (25125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f67e7f98219342a909edde4bb0379b94a8b7b8e9642dcd69db99e9d81aa28`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0348c34d54b11588c76668bed92ab8f4902b0acf696980add3cc0a42c7e12b2`  
		Last Modified: Thu, 02 Aug 2018 22:36:53 GMT  
		Size: 63.3 MB (63347942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7903778a3ba83d4c1e689f7917dafa747b85a5bdfd3761d439b9ebfe2431589`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9767bcb44f797274254ba07c6ab5d1dc6a6250c7d85152aa3ea48dbfa0b34a`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
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
$ docker pull mariadb@sha256:52b9b61f2161bc173748fc3e9ca252c45c7507b79c16d67ae4e21f2743919cf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108185527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7c4b30083a620d9036f45243e9930ac64c6f5e78a2f0f98b65ec17f493e40c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 09:50:54 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 09:51:19 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 09:51:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 09:53:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 09:53:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 09:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 09:57:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 09:57:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:57:25 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 03 Aug 2018 09:11:36 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 03 Aug 2018 09:11:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:21:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:21:12 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:21:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:21:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:21:49 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:21:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e86de98c709a4fccb36cef0e365dbe08ce3a37541e5fb61a1d6e638221a95c`  
		Last Modified: Thu, 26 Jul 2018 10:19:04 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050e1a810fc90ea50ea2c876b7e91dfbfb19f7b85fd5cecc0339b66bc9ee1d93`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2da9f46b7093c1c3cba01103eb505f03ce93fa3aaf461d8ba579aceef11537`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 809.0 KB (808978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea1ce7939fe030ab0a3d9f7fe7ccace9a29b36d8751e8e066f7b7275f633a07`  
		Last Modified: Thu, 26 Jul 2018 10:18:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb252b37d60a171dd017695d1fbda056f6942c93d7cf42cf4a45f463c9dee662`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 7.2 MB (7209898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472afaa75eff4774ac56a2399563c3bc2f7f745dbfcdf693316681cdfc29714f`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7596fd677a78ff0f00dd54add32ec51346e969cac7a63b7a51a7f1b4544030d`  
		Last Modified: Fri, 03 Aug 2018 09:30:43 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f0148eee07fb7da771f2bf0a5721e159fa82bfd191bfb129c6760de5654009`  
		Last Modified: Fri, 03 Aug 2018 09:31:09 GMT  
		Size: 54.6 MB (54590381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21816739224680bbe30f300189da7348b9faa9fdfa379ae4166e0e30c590b05f`  
		Last Modified: Fri, 03 Aug 2018 09:30:42 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64022c1792da75ab60c18b58abdc7cf8a760c5dac575d9ca3a44574b41492ab`  
		Last Modified: Fri, 03 Aug 2018 09:30:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.36`

```console
$ docker pull mariadb@sha256:bd0e858770313cc0ced93af4ae642d0cf3eead153f43938f8237c0e57c994846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.36` - linux; amd64

```console
$ docker pull mariadb@sha256:b8baec939fd41313877eb6caeb5dad1561bca03d71af8b451dd2c15b47866d23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114770051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee27a1ca8062bb3ad7cb23b5bd4cdceeba5ec0e01345299cf7a0332a6c15bf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:32:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:32:12 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:32:12 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:32:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:32:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:32:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:32:47 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 02 Aug 2018 22:32:52 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 02 Aug 2018 22:32:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:34:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:34:18 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:34:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:34:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:34:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:34:20 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:34:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7cbe08452f5510c8b33780722d0633069fbaf47763942d27e6d265e9577397`  
		Last Modified: Thu, 26 Jul 2018 23:41:33 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b59ea863d39c3b8ac36ae14d713ca404159c214d57c814ae934f608471e512`  
		Last Modified: Thu, 26 Jul 2018 23:41:32 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43925d63482f4bf39620f01751905bf2491e5f6d6a0484fdab6f1ceee059152`  
		Last Modified: Thu, 26 Jul 2018 23:41:33 GMT  
		Size: 840.7 KB (840746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae71dd18b9ac9102ce90ef1845a0d22eed79d729c50bb3bb0738a27a0957386`  
		Last Modified: Thu, 26 Jul 2018 23:41:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fbafc9ff56e5fc3f8060c290fb4a2a6d65e23c6149b86341902092568f9c5e`  
		Last Modified: Thu, 26 Jul 2018 23:41:34 GMT  
		Size: 7.3 MB (7319780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea508fb15d5f53ad8715f3b1973372d692256818a550212a6ce9a5dcd855ac26`  
		Last Modified: Thu, 26 Jul 2018 23:41:30 GMT  
		Size: 25.1 KB (25125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f67e7f98219342a909edde4bb0379b94a8b7b8e9642dcd69db99e9d81aa28`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0348c34d54b11588c76668bed92ab8f4902b0acf696980add3cc0a42c7e12b2`  
		Last Modified: Thu, 02 Aug 2018 22:36:53 GMT  
		Size: 63.3 MB (63347942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7903778a3ba83d4c1e689f7917dafa747b85a5bdfd3761d439b9ebfe2431589`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9767bcb44f797274254ba07c6ab5d1dc6a6250c7d85152aa3ea48dbfa0b34a`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
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
$ docker pull mariadb@sha256:52b9b61f2161bc173748fc3e9ca252c45c7507b79c16d67ae4e21f2743919cf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108185527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7c4b30083a620d9036f45243e9930ac64c6f5e78a2f0f98b65ec17f493e40c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 09:50:54 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 09:51:19 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 09:51:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 09:53:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 09:53:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 09:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 09:57:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 09:57:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:57:25 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 03 Aug 2018 09:11:36 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 03 Aug 2018 09:11:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:21:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:21:12 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:21:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:21:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:21:49 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:21:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e86de98c709a4fccb36cef0e365dbe08ce3a37541e5fb61a1d6e638221a95c`  
		Last Modified: Thu, 26 Jul 2018 10:19:04 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050e1a810fc90ea50ea2c876b7e91dfbfb19f7b85fd5cecc0339b66bc9ee1d93`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2da9f46b7093c1c3cba01103eb505f03ce93fa3aaf461d8ba579aceef11537`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 809.0 KB (808978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea1ce7939fe030ab0a3d9f7fe7ccace9a29b36d8751e8e066f7b7275f633a07`  
		Last Modified: Thu, 26 Jul 2018 10:18:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb252b37d60a171dd017695d1fbda056f6942c93d7cf42cf4a45f463c9dee662`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 7.2 MB (7209898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472afaa75eff4774ac56a2399563c3bc2f7f745dbfcdf693316681cdfc29714f`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7596fd677a78ff0f00dd54add32ec51346e969cac7a63b7a51a7f1b4544030d`  
		Last Modified: Fri, 03 Aug 2018 09:30:43 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f0148eee07fb7da771f2bf0a5721e159fa82bfd191bfb129c6760de5654009`  
		Last Modified: Fri, 03 Aug 2018 09:31:09 GMT  
		Size: 54.6 MB (54590381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21816739224680bbe30f300189da7348b9faa9fdfa379ae4166e0e30c590b05f`  
		Last Modified: Fri, 03 Aug 2018 09:30:42 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64022c1792da75ab60c18b58abdc7cf8a760c5dac575d9ca3a44574b41492ab`  
		Last Modified: Fri, 03 Aug 2018 09:30:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.36-xenial`

```console
$ docker pull mariadb@sha256:bd0e858770313cc0ced93af4ae642d0cf3eead153f43938f8237c0e57c994846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.36-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:b8baec939fd41313877eb6caeb5dad1561bca03d71af8b451dd2c15b47866d23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114770051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee27a1ca8062bb3ad7cb23b5bd4cdceeba5ec0e01345299cf7a0332a6c15bf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:32:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:32:12 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:32:12 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:32:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:32:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:32:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:32:47 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 02 Aug 2018 22:32:52 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 02 Aug 2018 22:32:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:34:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:34:18 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:34:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:34:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:34:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:34:20 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:34:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7cbe08452f5510c8b33780722d0633069fbaf47763942d27e6d265e9577397`  
		Last Modified: Thu, 26 Jul 2018 23:41:33 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b59ea863d39c3b8ac36ae14d713ca404159c214d57c814ae934f608471e512`  
		Last Modified: Thu, 26 Jul 2018 23:41:32 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43925d63482f4bf39620f01751905bf2491e5f6d6a0484fdab6f1ceee059152`  
		Last Modified: Thu, 26 Jul 2018 23:41:33 GMT  
		Size: 840.7 KB (840746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae71dd18b9ac9102ce90ef1845a0d22eed79d729c50bb3bb0738a27a0957386`  
		Last Modified: Thu, 26 Jul 2018 23:41:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fbafc9ff56e5fc3f8060c290fb4a2a6d65e23c6149b86341902092568f9c5e`  
		Last Modified: Thu, 26 Jul 2018 23:41:34 GMT  
		Size: 7.3 MB (7319780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea508fb15d5f53ad8715f3b1973372d692256818a550212a6ce9a5dcd855ac26`  
		Last Modified: Thu, 26 Jul 2018 23:41:30 GMT  
		Size: 25.1 KB (25125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f67e7f98219342a909edde4bb0379b94a8b7b8e9642dcd69db99e9d81aa28`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0348c34d54b11588c76668bed92ab8f4902b0acf696980add3cc0a42c7e12b2`  
		Last Modified: Thu, 02 Aug 2018 22:36:53 GMT  
		Size: 63.3 MB (63347942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7903778a3ba83d4c1e689f7917dafa747b85a5bdfd3761d439b9ebfe2431589`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9767bcb44f797274254ba07c6ab5d1dc6a6250c7d85152aa3ea48dbfa0b34a`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
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
$ docker pull mariadb@sha256:52b9b61f2161bc173748fc3e9ca252c45c7507b79c16d67ae4e21f2743919cf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108185527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7c4b30083a620d9036f45243e9930ac64c6f5e78a2f0f98b65ec17f493e40c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 09:50:54 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 09:51:19 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 09:51:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 09:53:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 09:53:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 09:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 09:57:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 09:57:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:57:25 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 03 Aug 2018 09:11:36 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 03 Aug 2018 09:11:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:21:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:21:12 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:21:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:21:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:21:49 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:21:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e86de98c709a4fccb36cef0e365dbe08ce3a37541e5fb61a1d6e638221a95c`  
		Last Modified: Thu, 26 Jul 2018 10:19:04 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050e1a810fc90ea50ea2c876b7e91dfbfb19f7b85fd5cecc0339b66bc9ee1d93`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2da9f46b7093c1c3cba01103eb505f03ce93fa3aaf461d8ba579aceef11537`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 809.0 KB (808978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea1ce7939fe030ab0a3d9f7fe7ccace9a29b36d8751e8e066f7b7275f633a07`  
		Last Modified: Thu, 26 Jul 2018 10:18:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb252b37d60a171dd017695d1fbda056f6942c93d7cf42cf4a45f463c9dee662`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 7.2 MB (7209898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472afaa75eff4774ac56a2399563c3bc2f7f745dbfcdf693316681cdfc29714f`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7596fd677a78ff0f00dd54add32ec51346e969cac7a63b7a51a7f1b4544030d`  
		Last Modified: Fri, 03 Aug 2018 09:30:43 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f0148eee07fb7da771f2bf0a5721e159fa82bfd191bfb129c6760de5654009`  
		Last Modified: Fri, 03 Aug 2018 09:31:09 GMT  
		Size: 54.6 MB (54590381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21816739224680bbe30f300189da7348b9faa9fdfa379ae4166e0e30c590b05f`  
		Last Modified: Fri, 03 Aug 2018 09:30:42 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64022c1792da75ab60c18b58abdc7cf8a760c5dac575d9ca3a44574b41492ab`  
		Last Modified: Fri, 03 Aug 2018 09:30:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:bd0e858770313cc0ced93af4ae642d0cf3eead153f43938f8237c0e57c994846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:b8baec939fd41313877eb6caeb5dad1561bca03d71af8b451dd2c15b47866d23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114770051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee27a1ca8062bb3ad7cb23b5bd4cdceeba5ec0e01345299cf7a0332a6c15bf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:32:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:32:12 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:32:12 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:32:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:32:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:32:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:32:47 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 02 Aug 2018 22:32:52 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 02 Aug 2018 22:32:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:34:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:34:18 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:34:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:34:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:34:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:34:20 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:34:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7cbe08452f5510c8b33780722d0633069fbaf47763942d27e6d265e9577397`  
		Last Modified: Thu, 26 Jul 2018 23:41:33 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b59ea863d39c3b8ac36ae14d713ca404159c214d57c814ae934f608471e512`  
		Last Modified: Thu, 26 Jul 2018 23:41:32 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43925d63482f4bf39620f01751905bf2491e5f6d6a0484fdab6f1ceee059152`  
		Last Modified: Thu, 26 Jul 2018 23:41:33 GMT  
		Size: 840.7 KB (840746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae71dd18b9ac9102ce90ef1845a0d22eed79d729c50bb3bb0738a27a0957386`  
		Last Modified: Thu, 26 Jul 2018 23:41:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fbafc9ff56e5fc3f8060c290fb4a2a6d65e23c6149b86341902092568f9c5e`  
		Last Modified: Thu, 26 Jul 2018 23:41:34 GMT  
		Size: 7.3 MB (7319780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea508fb15d5f53ad8715f3b1973372d692256818a550212a6ce9a5dcd855ac26`  
		Last Modified: Thu, 26 Jul 2018 23:41:30 GMT  
		Size: 25.1 KB (25125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f67e7f98219342a909edde4bb0379b94a8b7b8e9642dcd69db99e9d81aa28`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0348c34d54b11588c76668bed92ab8f4902b0acf696980add3cc0a42c7e12b2`  
		Last Modified: Thu, 02 Aug 2018 22:36:53 GMT  
		Size: 63.3 MB (63347942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7903778a3ba83d4c1e689f7917dafa747b85a5bdfd3761d439b9ebfe2431589`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9767bcb44f797274254ba07c6ab5d1dc6a6250c7d85152aa3ea48dbfa0b34a`  
		Last Modified: Thu, 02 Aug 2018 22:36:30 GMT  
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
$ docker pull mariadb@sha256:52b9b61f2161bc173748fc3e9ca252c45c7507b79c16d67ae4e21f2743919cf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108185527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7c4b30083a620d9036f45243e9930ac64c6f5e78a2f0f98b65ec17f493e40c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:24:32 GMT
ADD file:93b9efc61400dd63da35d3bdf0a8937a0e869256c0a1448918c67d8dd4bb9a44 in / 
# Tue, 17 Jul 2018 11:24:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:24:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:24:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:25:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:25:09 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 09:50:54 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 09:51:19 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 09:51:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 09:53:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 09:53:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 09:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 09:57:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 09:57:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:57:25 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 03 Aug 2018 09:11:36 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 03 Aug 2018 09:11:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 03 Aug 2018 09:21:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 03 Aug 2018 09:21:12 GMT
VOLUME [/var/lib/mysql]
# Fri, 03 Aug 2018 09:21:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 03 Aug 2018 09:21:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Aug 2018 09:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Aug 2018 09:21:49 GMT
EXPOSE 3306/tcp
# Fri, 03 Aug 2018 09:21:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1d42d48bcb676f02dfc09c86eb381bee74fb84bdad7247d643311c55e97b03e1`  
		Last Modified: Tue, 17 Jul 2018 11:28:58 GMT  
		Size: 45.5 MB (45543237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7257a0c84303a4e1bc7b272c1795b237b5a819780dc3ee848bd9aa516c0833`  
		Last Modified: Tue, 17 Jul 2018 11:28:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d824019e9337c4643bb01728d9d6d1dce98f3db1b568a0db0ece041f5d4f9`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795728728939c3ed0a7b959cf48ae72dcbab4d7b2bf437b3bead8ddd238ca995`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5d42ebe2b0960d616db6b6868bb1f7f47842478d500b1e5d783fa2b2baf876`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e86de98c709a4fccb36cef0e365dbe08ce3a37541e5fb61a1d6e638221a95c`  
		Last Modified: Thu, 26 Jul 2018 10:19:04 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050e1a810fc90ea50ea2c876b7e91dfbfb19f7b85fd5cecc0339b66bc9ee1d93`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2da9f46b7093c1c3cba01103eb505f03ce93fa3aaf461d8ba579aceef11537`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 809.0 KB (808978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea1ce7939fe030ab0a3d9f7fe7ccace9a29b36d8751e8e066f7b7275f633a07`  
		Last Modified: Thu, 26 Jul 2018 10:18:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb252b37d60a171dd017695d1fbda056f6942c93d7cf42cf4a45f463c9dee662`  
		Last Modified: Thu, 26 Jul 2018 10:19:02 GMT  
		Size: 7.2 MB (7209898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472afaa75eff4774ac56a2399563c3bc2f7f745dbfcdf693316681cdfc29714f`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7596fd677a78ff0f00dd54add32ec51346e969cac7a63b7a51a7f1b4544030d`  
		Last Modified: Fri, 03 Aug 2018 09:30:43 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f0148eee07fb7da771f2bf0a5721e159fa82bfd191bfb129c6760de5654009`  
		Last Modified: Fri, 03 Aug 2018 09:31:09 GMT  
		Size: 54.6 MB (54590381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21816739224680bbe30f300189da7348b9faa9fdfa379ae4166e0e30c590b05f`  
		Last Modified: Fri, 03 Aug 2018 09:30:42 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64022c1792da75ab60c18b58abdc7cf8a760c5dac575d9ca3a44574b41492ab`  
		Last Modified: Fri, 03 Aug 2018 09:30:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:9a45e49fd42d8809b6ffe3f9abf217958d316f09d2b8a89e976ec1c8b4dcc069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:53d0d2e5ccb1015f082608678510eed7cfad1a21d52e58d8cb6e618662115fe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132538335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135508a33960bc6b5e219b2f043e77a6a5997832023433254d61fcbf3ba9db1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:30:53 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 10 Aug 2018 21:53:08 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Fri, 10 Aug 2018 21:53:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 10 Aug 2018 21:54:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 10 Aug 2018 21:54:31 GMT
VOLUME [/var/lib/mysql]
# Fri, 10 Aug 2018 21:54:31 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 10 Aug 2018 21:54:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 21:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 21:54:33 GMT
EXPOSE 3306/tcp
# Fri, 10 Aug 2018 21:54:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284d8743d43592e8f21ea9388522073b6c4cb04c899ee97a930498b33f2c0066`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eddb113a4582cdd9be35040dec7b5ed3426f5c2260ff8d359ada7c3393bd6fb8`  
		Last Modified: Fri, 10 Aug 2018 21:56:03 GMT  
		Size: 92.2 MB (92224337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9c8a4cc9a35d6d4ae55f48ecb69723d157935111c541c0603c559d33a0f95`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8357ef963e4cb21ebed10a84b9496d5bc1e3f25d766571c3a5a874f1dc36ccf3`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.35`

```console
$ docker pull mariadb@sha256:9a45e49fd42d8809b6ffe3f9abf217958d316f09d2b8a89e976ec1c8b4dcc069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.35` - linux; amd64

```console
$ docker pull mariadb@sha256:53d0d2e5ccb1015f082608678510eed7cfad1a21d52e58d8cb6e618662115fe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132538335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135508a33960bc6b5e219b2f043e77a6a5997832023433254d61fcbf3ba9db1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:30:53 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 10 Aug 2018 21:53:08 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Fri, 10 Aug 2018 21:53:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 10 Aug 2018 21:54:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 10 Aug 2018 21:54:31 GMT
VOLUME [/var/lib/mysql]
# Fri, 10 Aug 2018 21:54:31 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 10 Aug 2018 21:54:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 21:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 21:54:33 GMT
EXPOSE 3306/tcp
# Fri, 10 Aug 2018 21:54:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284d8743d43592e8f21ea9388522073b6c4cb04c899ee97a930498b33f2c0066`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eddb113a4582cdd9be35040dec7b5ed3426f5c2260ff8d359ada7c3393bd6fb8`  
		Last Modified: Fri, 10 Aug 2018 21:56:03 GMT  
		Size: 92.2 MB (92224337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9c8a4cc9a35d6d4ae55f48ecb69723d157935111c541c0603c559d33a0f95`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8357ef963e4cb21ebed10a84b9496d5bc1e3f25d766571c3a5a874f1dc36ccf3`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.35-bionic`

```console
$ docker pull mariadb@sha256:9a45e49fd42d8809b6ffe3f9abf217958d316f09d2b8a89e976ec1c8b4dcc069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.35-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:53d0d2e5ccb1015f082608678510eed7cfad1a21d52e58d8cb6e618662115fe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132538335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135508a33960bc6b5e219b2f043e77a6a5997832023433254d61fcbf3ba9db1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:30:53 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 10 Aug 2018 21:53:08 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Fri, 10 Aug 2018 21:53:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 10 Aug 2018 21:54:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 10 Aug 2018 21:54:31 GMT
VOLUME [/var/lib/mysql]
# Fri, 10 Aug 2018 21:54:31 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 10 Aug 2018 21:54:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 21:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 21:54:33 GMT
EXPOSE 3306/tcp
# Fri, 10 Aug 2018 21:54:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284d8743d43592e8f21ea9388522073b6c4cb04c899ee97a930498b33f2c0066`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eddb113a4582cdd9be35040dec7b5ed3426f5c2260ff8d359ada7c3393bd6fb8`  
		Last Modified: Fri, 10 Aug 2018 21:56:03 GMT  
		Size: 92.2 MB (92224337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9c8a4cc9a35d6d4ae55f48ecb69723d157935111c541c0603c559d33a0f95`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8357ef963e4cb21ebed10a84b9496d5bc1e3f25d766571c3a5a874f1dc36ccf3`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:9a45e49fd42d8809b6ffe3f9abf217958d316f09d2b8a89e976ec1c8b4dcc069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:53d0d2e5ccb1015f082608678510eed7cfad1a21d52e58d8cb6e618662115fe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132538335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135508a33960bc6b5e219b2f043e77a6a5997832023433254d61fcbf3ba9db1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:30:53 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 10 Aug 2018 21:53:08 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Fri, 10 Aug 2018 21:53:09 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 10 Aug 2018 21:54:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 10 Aug 2018 21:54:31 GMT
VOLUME [/var/lib/mysql]
# Fri, 10 Aug 2018 21:54:31 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 10 Aug 2018 21:54:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 21:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 21:54:33 GMT
EXPOSE 3306/tcp
# Fri, 10 Aug 2018 21:54:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284d8743d43592e8f21ea9388522073b6c4cb04c899ee97a930498b33f2c0066`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eddb113a4582cdd9be35040dec7b5ed3426f5c2260ff8d359ada7c3393bd6fb8`  
		Last Modified: Fri, 10 Aug 2018 21:56:03 GMT  
		Size: 92.2 MB (92224337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9c8a4cc9a35d6d4ae55f48ecb69723d157935111c541c0603c559d33a0f95`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8357ef963e4cb21ebed10a84b9496d5bc1e3f25d766571c3a5a874f1dc36ccf3`  
		Last Modified: Fri, 10 Aug 2018 21:55:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:b4e32510fbd9b7f48b02bcd54994ab2cd4fed383951398f755d3823f4c6dc24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:c70d9aad7cafad5db44ef889bf3aeae35d514e49d7f78586b974c546f71a8b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113434009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc770a6cdd01a569919f5e6db10214083764ecb47ba6e75fb44c29a723be3647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:29:46 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 23:29:46 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 23:29:47 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:30:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:30:25 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:30:25 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:30:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:30:27 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:30:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a9887d429f42af519445cabadc92e8fafcefaff29c78279f57fd9f36bd55e3`  
		Last Modified: Thu, 26 Jul 2018 23:37:23 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404ea0c0118658a8056b8a5c516ffa79591e5d6c7c318d723f77c1678c305149`  
		Last Modified: Thu, 26 Jul 2018 23:37:50 GMT  
		Size: 73.1 MB (73120011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9f8a33889753d0d87c111a6bd94fe60716457e6cc490a95f6c11f8db0a637`  
		Last Modified: Thu, 26 Jul 2018 23:37:23 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c96b3500a0443c653faf21d84f37eeb1105572aa4faacd6a6049f438149003b`  
		Last Modified: Thu, 26 Jul 2018 23:37:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:954c6413d8b5ca88214129bb05230b011168d2309edd67946571e4220e145664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108596219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00eeee8e9ffecd22f8ee35161fcd5fd1c845e2a01407ff04d36fddc06dbab5a5`
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
# Fri, 27 Jul 2018 13:32:57 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Fri, 27 Jul 2018 13:33:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:35:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:35:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:35:12 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:35:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:35:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:35:19 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:35:20 GMT
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
	-	`sha256:31b86fe955953ccb814935e6ec685e6db59229a0aff1a16b6955894be3d65ff1`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc25eb149371ddd2bfbfd45c7628d840bf7b70386835c255ce1d7160b838af0`  
		Last Modified: Fri, 27 Jul 2018 13:46:51 GMT  
		Size: 72.1 MB (72113576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe6f086fe75c3a745735ec199067b08153222d83ba8f9faabf3c13182d75b2d`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afc2f0be63849af5a41a6c1c8cbcf85051bebe23cf6faee0c62e9eb50ddc03a`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:58c110b218cc5593d34f7dd9b37f8d7e602269950ff368f0ecae374f6890fd73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122259362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a17d47a432dce7dd637e51de078ba9e9e6383a3b9eaf64225cfc6fe7ff5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:06:04 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 09:06:11 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 09:06:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:15:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:15:31 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:15:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:15:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:16:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:16:21 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:16:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475cdd1f1228c8b51261125bb2bd3d10403ef59b1bd3a3cbee4eb589d908fd29`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc4168c5e42ec55ff8f8e885be812be068ea7f34d78fbaa51cab17e943fffab`  
		Last Modified: Thu, 26 Jul 2018 10:18:09 GMT  
		Size: 77.9 MB (77926606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9650d67e088ca7d43bc35f25ecf8e303ef57ba9b4b6bfce26eaa4335f05bd7c`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868dab6e32dbdff293149663cd2d38934c317f945b77d0e2835dd986bf6e5acf`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.16`

```console
$ docker pull mariadb@sha256:b4e32510fbd9b7f48b02bcd54994ab2cd4fed383951398f755d3823f4c6dc24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.16` - linux; amd64

```console
$ docker pull mariadb@sha256:c70d9aad7cafad5db44ef889bf3aeae35d514e49d7f78586b974c546f71a8b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113434009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc770a6cdd01a569919f5e6db10214083764ecb47ba6e75fb44c29a723be3647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:29:46 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 23:29:46 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 23:29:47 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:30:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:30:25 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:30:25 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:30:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:30:27 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:30:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a9887d429f42af519445cabadc92e8fafcefaff29c78279f57fd9f36bd55e3`  
		Last Modified: Thu, 26 Jul 2018 23:37:23 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404ea0c0118658a8056b8a5c516ffa79591e5d6c7c318d723f77c1678c305149`  
		Last Modified: Thu, 26 Jul 2018 23:37:50 GMT  
		Size: 73.1 MB (73120011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9f8a33889753d0d87c111a6bd94fe60716457e6cc490a95f6c11f8db0a637`  
		Last Modified: Thu, 26 Jul 2018 23:37:23 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c96b3500a0443c653faf21d84f37eeb1105572aa4faacd6a6049f438149003b`  
		Last Modified: Thu, 26 Jul 2018 23:37:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.16` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:954c6413d8b5ca88214129bb05230b011168d2309edd67946571e4220e145664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108596219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00eeee8e9ffecd22f8ee35161fcd5fd1c845e2a01407ff04d36fddc06dbab5a5`
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
# Fri, 27 Jul 2018 13:32:57 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Fri, 27 Jul 2018 13:33:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:35:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:35:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:35:12 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:35:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:35:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:35:19 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:35:20 GMT
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
	-	`sha256:31b86fe955953ccb814935e6ec685e6db59229a0aff1a16b6955894be3d65ff1`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc25eb149371ddd2bfbfd45c7628d840bf7b70386835c255ce1d7160b838af0`  
		Last Modified: Fri, 27 Jul 2018 13:46:51 GMT  
		Size: 72.1 MB (72113576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe6f086fe75c3a745735ec199067b08153222d83ba8f9faabf3c13182d75b2d`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afc2f0be63849af5a41a6c1c8cbcf85051bebe23cf6faee0c62e9eb50ddc03a`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.16` - linux; ppc64le

```console
$ docker pull mariadb@sha256:58c110b218cc5593d34f7dd9b37f8d7e602269950ff368f0ecae374f6890fd73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122259362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a17d47a432dce7dd637e51de078ba9e9e6383a3b9eaf64225cfc6fe7ff5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:06:04 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 09:06:11 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 09:06:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:15:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:15:31 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:15:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:15:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:16:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:16:21 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:16:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475cdd1f1228c8b51261125bb2bd3d10403ef59b1bd3a3cbee4eb589d908fd29`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc4168c5e42ec55ff8f8e885be812be068ea7f34d78fbaa51cab17e943fffab`  
		Last Modified: Thu, 26 Jul 2018 10:18:09 GMT  
		Size: 77.9 MB (77926606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9650d67e088ca7d43bc35f25ecf8e303ef57ba9b4b6bfce26eaa4335f05bd7c`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868dab6e32dbdff293149663cd2d38934c317f945b77d0e2835dd986bf6e5acf`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.16-bionic`

```console
$ docker pull mariadb@sha256:b4e32510fbd9b7f48b02bcd54994ab2cd4fed383951398f755d3823f4c6dc24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.16-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:c70d9aad7cafad5db44ef889bf3aeae35d514e49d7f78586b974c546f71a8b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113434009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc770a6cdd01a569919f5e6db10214083764ecb47ba6e75fb44c29a723be3647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:29:46 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 23:29:46 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 23:29:47 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:30:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:30:25 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:30:25 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:30:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:30:27 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:30:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a9887d429f42af519445cabadc92e8fafcefaff29c78279f57fd9f36bd55e3`  
		Last Modified: Thu, 26 Jul 2018 23:37:23 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404ea0c0118658a8056b8a5c516ffa79591e5d6c7c318d723f77c1678c305149`  
		Last Modified: Thu, 26 Jul 2018 23:37:50 GMT  
		Size: 73.1 MB (73120011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9f8a33889753d0d87c111a6bd94fe60716457e6cc490a95f6c11f8db0a637`  
		Last Modified: Thu, 26 Jul 2018 23:37:23 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c96b3500a0443c653faf21d84f37eeb1105572aa4faacd6a6049f438149003b`  
		Last Modified: Thu, 26 Jul 2018 23:37:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.16-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:954c6413d8b5ca88214129bb05230b011168d2309edd67946571e4220e145664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108596219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00eeee8e9ffecd22f8ee35161fcd5fd1c845e2a01407ff04d36fddc06dbab5a5`
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
# Fri, 27 Jul 2018 13:32:57 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Fri, 27 Jul 2018 13:33:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:35:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:35:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:35:12 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:35:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:35:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:35:19 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:35:20 GMT
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
	-	`sha256:31b86fe955953ccb814935e6ec685e6db59229a0aff1a16b6955894be3d65ff1`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc25eb149371ddd2bfbfd45c7628d840bf7b70386835c255ce1d7160b838af0`  
		Last Modified: Fri, 27 Jul 2018 13:46:51 GMT  
		Size: 72.1 MB (72113576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe6f086fe75c3a745735ec199067b08153222d83ba8f9faabf3c13182d75b2d`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afc2f0be63849af5a41a6c1c8cbcf85051bebe23cf6faee0c62e9eb50ddc03a`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.16-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:58c110b218cc5593d34f7dd9b37f8d7e602269950ff368f0ecae374f6890fd73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122259362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a17d47a432dce7dd637e51de078ba9e9e6383a3b9eaf64225cfc6fe7ff5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:06:04 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 09:06:11 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 09:06:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:15:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:15:31 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:15:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:15:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:16:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:16:21 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:16:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475cdd1f1228c8b51261125bb2bd3d10403ef59b1bd3a3cbee4eb589d908fd29`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc4168c5e42ec55ff8f8e885be812be068ea7f34d78fbaa51cab17e943fffab`  
		Last Modified: Thu, 26 Jul 2018 10:18:09 GMT  
		Size: 77.9 MB (77926606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9650d67e088ca7d43bc35f25ecf8e303ef57ba9b4b6bfce26eaa4335f05bd7c`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868dab6e32dbdff293149663cd2d38934c317f945b77d0e2835dd986bf6e5acf`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:b4e32510fbd9b7f48b02bcd54994ab2cd4fed383951398f755d3823f4c6dc24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:c70d9aad7cafad5db44ef889bf3aeae35d514e49d7f78586b974c546f71a8b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113434009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc770a6cdd01a569919f5e6db10214083764ecb47ba6e75fb44c29a723be3647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:29:46 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 23:29:46 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 23:29:47 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:30:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:30:25 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:30:25 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:30:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:30:27 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:30:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a9887d429f42af519445cabadc92e8fafcefaff29c78279f57fd9f36bd55e3`  
		Last Modified: Thu, 26 Jul 2018 23:37:23 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404ea0c0118658a8056b8a5c516ffa79591e5d6c7c318d723f77c1678c305149`  
		Last Modified: Thu, 26 Jul 2018 23:37:50 GMT  
		Size: 73.1 MB (73120011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9f8a33889753d0d87c111a6bd94fe60716457e6cc490a95f6c11f8db0a637`  
		Last Modified: Thu, 26 Jul 2018 23:37:23 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c96b3500a0443c653faf21d84f37eeb1105572aa4faacd6a6049f438149003b`  
		Last Modified: Thu, 26 Jul 2018 23:37:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:954c6413d8b5ca88214129bb05230b011168d2309edd67946571e4220e145664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108596219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00eeee8e9ffecd22f8ee35161fcd5fd1c845e2a01407ff04d36fddc06dbab5a5`
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
# Fri, 27 Jul 2018 13:32:57 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Fri, 27 Jul 2018 13:33:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:35:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:35:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:35:12 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:35:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:35:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:35:19 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:35:20 GMT
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
	-	`sha256:31b86fe955953ccb814935e6ec685e6db59229a0aff1a16b6955894be3d65ff1`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc25eb149371ddd2bfbfd45c7628d840bf7b70386835c255ce1d7160b838af0`  
		Last Modified: Fri, 27 Jul 2018 13:46:51 GMT  
		Size: 72.1 MB (72113576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe6f086fe75c3a745735ec199067b08153222d83ba8f9faabf3c13182d75b2d`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afc2f0be63849af5a41a6c1c8cbcf85051bebe23cf6faee0c62e9eb50ddc03a`  
		Last Modified: Fri, 27 Jul 2018 13:46:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:58c110b218cc5593d34f7dd9b37f8d7e602269950ff368f0ecae374f6890fd73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122259362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a17d47a432dce7dd637e51de078ba9e9e6383a3b9eaf64225cfc6fe7ff5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:06:04 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 09:06:11 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 09:06:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:15:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:15:31 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:15:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:15:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:16:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:16:21 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:16:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475cdd1f1228c8b51261125bb2bd3d10403ef59b1bd3a3cbee4eb589d908fd29`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc4168c5e42ec55ff8f8e885be812be068ea7f34d78fbaa51cab17e943fffab`  
		Last Modified: Thu, 26 Jul 2018 10:18:09 GMT  
		Size: 77.9 MB (77926606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9650d67e088ca7d43bc35f25ecf8e303ef57ba9b4b6bfce26eaa4335f05bd7c`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868dab6e32dbdff293149663cd2d38934c317f945b77d0e2835dd986bf6e5acf`  
		Last Modified: Thu, 26 Jul 2018 10:17:47 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:edef80de393cf4a79504168c663f8b0c6b15060333e5a7d7aee3dc0a4de6e927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:9b60ca2975f7def2511e41ba690d04b6c137bcdf69bf40458dfd44fa31d145ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114487280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c73b3262fff7ac54635d58e13deb8cc8e224dddf3b2b0e2abfc0ad9d508f54c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 23:28:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:29:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:29:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:29:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:29:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:29:25 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf8ee7af181ecfed99540aa8718bfa106bb9e0cb2f89dce38bed02dc389ec3`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa500ed3b27c7dac758267a1dea66475aa658715ea631959d35d43130c5d7f7`  
		Last Modified: Thu, 26 Jul 2018 23:34:40 GMT  
		Size: 74.2 MB (74173284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632a62957830aaa6cdcd1659f1a2f401c5e561f252d9881e59020f641dfa7ae`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5b3adf01db9eead0e53842895e0dec4406e6be012d25399d86e3c85fed0ec`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:acf0b89aadd27084c72ad521ae4b630659e56304ec876be2665041361ea0369b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109549100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b53a53db18b6cd806eaf067d986ca4b4afa4bc87ac3fd7c15040454410616fc`
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
# Fri, 27 Jul 2018 13:30:08 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Fri, 27 Jul 2018 13:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:32:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:32:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:32:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:32:24 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:32:25 GMT
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
	-	`sha256:691c15736db6a170924f162ee63c6b1582489f7a990039199acf795aae6fd6b1`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed8bcd8c2f0303a6a05deae3e65fde8e8ddc63fb46c141420ec394a3bb6559`  
		Last Modified: Fri, 27 Jul 2018 13:44:01 GMT  
		Size: 73.1 MB (73066459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9a3892a2bc7cb339d0e93ed66c1a44e00b3f92b570918bc3a98768c7ec232`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b837b5873b40d6330e8383c8a2013ee67ab0becc71f7e87de821b98e484e0fc8`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:27ed397ef14a40cbe130aab5cb9513f763f19c1c5de79d3b543a2c0af4530489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123347650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c67c96ea2a4c9f89dd14b49b1d627992e525567c696af8fb2879d187ed4b411`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:58:52 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:58:56 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:59:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:57 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:05:04 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:33 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:05:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b4c938994d5c963e5d1b5f730b7eeea504e516bde1a732ff598d2f8a423c`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767ff2353958c8b501cda45d33bbf209ac9a806257dcdcad010ae9e68ff1b46`  
		Last Modified: Thu, 26 Jul 2018 10:16:18 GMT  
		Size: 79.0 MB (79014888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71633793a9e44f2e3f86177f21a8233d375fd8145d37db1cf46c968752a41837`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c72b4ed0dcf62352afa0bdfd1a755cd13582cf8a019cf5dabfbfa0bf817601`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.8`

```console
$ docker pull mariadb@sha256:edef80de393cf4a79504168c663f8b0c6b15060333e5a7d7aee3dc0a4de6e927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.8` - linux; amd64

```console
$ docker pull mariadb@sha256:9b60ca2975f7def2511e41ba690d04b6c137bcdf69bf40458dfd44fa31d145ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114487280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c73b3262fff7ac54635d58e13deb8cc8e224dddf3b2b0e2abfc0ad9d508f54c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 23:28:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:29:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:29:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:29:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:29:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:29:25 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf8ee7af181ecfed99540aa8718bfa106bb9e0cb2f89dce38bed02dc389ec3`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa500ed3b27c7dac758267a1dea66475aa658715ea631959d35d43130c5d7f7`  
		Last Modified: Thu, 26 Jul 2018 23:34:40 GMT  
		Size: 74.2 MB (74173284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632a62957830aaa6cdcd1659f1a2f401c5e561f252d9881e59020f641dfa7ae`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5b3adf01db9eead0e53842895e0dec4406e6be012d25399d86e3c85fed0ec`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.8` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:acf0b89aadd27084c72ad521ae4b630659e56304ec876be2665041361ea0369b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109549100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b53a53db18b6cd806eaf067d986ca4b4afa4bc87ac3fd7c15040454410616fc`
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
# Fri, 27 Jul 2018 13:30:08 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Fri, 27 Jul 2018 13:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:32:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:32:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:32:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:32:24 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:32:25 GMT
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
	-	`sha256:691c15736db6a170924f162ee63c6b1582489f7a990039199acf795aae6fd6b1`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed8bcd8c2f0303a6a05deae3e65fde8e8ddc63fb46c141420ec394a3bb6559`  
		Last Modified: Fri, 27 Jul 2018 13:44:01 GMT  
		Size: 73.1 MB (73066459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9a3892a2bc7cb339d0e93ed66c1a44e00b3f92b570918bc3a98768c7ec232`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b837b5873b40d6330e8383c8a2013ee67ab0becc71f7e87de821b98e484e0fc8`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.8` - linux; ppc64le

```console
$ docker pull mariadb@sha256:27ed397ef14a40cbe130aab5cb9513f763f19c1c5de79d3b543a2c0af4530489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123347650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c67c96ea2a4c9f89dd14b49b1d627992e525567c696af8fb2879d187ed4b411`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:58:52 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:58:56 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:59:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:57 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:05:04 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:33 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:05:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b4c938994d5c963e5d1b5f730b7eeea504e516bde1a732ff598d2f8a423c`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767ff2353958c8b501cda45d33bbf209ac9a806257dcdcad010ae9e68ff1b46`  
		Last Modified: Thu, 26 Jul 2018 10:16:18 GMT  
		Size: 79.0 MB (79014888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71633793a9e44f2e3f86177f21a8233d375fd8145d37db1cf46c968752a41837`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c72b4ed0dcf62352afa0bdfd1a755cd13582cf8a019cf5dabfbfa0bf817601`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.8-bionic`

```console
$ docker pull mariadb@sha256:edef80de393cf4a79504168c663f8b0c6b15060333e5a7d7aee3dc0a4de6e927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.8-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:9b60ca2975f7def2511e41ba690d04b6c137bcdf69bf40458dfd44fa31d145ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114487280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c73b3262fff7ac54635d58e13deb8cc8e224dddf3b2b0e2abfc0ad9d508f54c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 23:28:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:29:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:29:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:29:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:29:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:29:25 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf8ee7af181ecfed99540aa8718bfa106bb9e0cb2f89dce38bed02dc389ec3`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa500ed3b27c7dac758267a1dea66475aa658715ea631959d35d43130c5d7f7`  
		Last Modified: Thu, 26 Jul 2018 23:34:40 GMT  
		Size: 74.2 MB (74173284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632a62957830aaa6cdcd1659f1a2f401c5e561f252d9881e59020f641dfa7ae`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5b3adf01db9eead0e53842895e0dec4406e6be012d25399d86e3c85fed0ec`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.8-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:acf0b89aadd27084c72ad521ae4b630659e56304ec876be2665041361ea0369b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109549100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b53a53db18b6cd806eaf067d986ca4b4afa4bc87ac3fd7c15040454410616fc`
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
# Fri, 27 Jul 2018 13:30:08 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Fri, 27 Jul 2018 13:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:32:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:32:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:32:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:32:24 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:32:25 GMT
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
	-	`sha256:691c15736db6a170924f162ee63c6b1582489f7a990039199acf795aae6fd6b1`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed8bcd8c2f0303a6a05deae3e65fde8e8ddc63fb46c141420ec394a3bb6559`  
		Last Modified: Fri, 27 Jul 2018 13:44:01 GMT  
		Size: 73.1 MB (73066459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9a3892a2bc7cb339d0e93ed66c1a44e00b3f92b570918bc3a98768c7ec232`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b837b5873b40d6330e8383c8a2013ee67ab0becc71f7e87de821b98e484e0fc8`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.8-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:27ed397ef14a40cbe130aab5cb9513f763f19c1c5de79d3b543a2c0af4530489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123347650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c67c96ea2a4c9f89dd14b49b1d627992e525567c696af8fb2879d187ed4b411`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:58:52 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:58:56 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:59:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:57 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:05:04 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:33 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:05:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b4c938994d5c963e5d1b5f730b7eeea504e516bde1a732ff598d2f8a423c`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767ff2353958c8b501cda45d33bbf209ac9a806257dcdcad010ae9e68ff1b46`  
		Last Modified: Thu, 26 Jul 2018 10:16:18 GMT  
		Size: 79.0 MB (79014888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71633793a9e44f2e3f86177f21a8233d375fd8145d37db1cf46c968752a41837`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c72b4ed0dcf62352afa0bdfd1a755cd13582cf8a019cf5dabfbfa0bf817601`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:edef80de393cf4a79504168c663f8b0c6b15060333e5a7d7aee3dc0a4de6e927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:9b60ca2975f7def2511e41ba690d04b6c137bcdf69bf40458dfd44fa31d145ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114487280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c73b3262fff7ac54635d58e13deb8cc8e224dddf3b2b0e2abfc0ad9d508f54c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 23:28:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:29:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:29:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:29:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:29:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:29:25 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf8ee7af181ecfed99540aa8718bfa106bb9e0cb2f89dce38bed02dc389ec3`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa500ed3b27c7dac758267a1dea66475aa658715ea631959d35d43130c5d7f7`  
		Last Modified: Thu, 26 Jul 2018 23:34:40 GMT  
		Size: 74.2 MB (74173284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632a62957830aaa6cdcd1659f1a2f401c5e561f252d9881e59020f641dfa7ae`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5b3adf01db9eead0e53842895e0dec4406e6be012d25399d86e3c85fed0ec`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:acf0b89aadd27084c72ad521ae4b630659e56304ec876be2665041361ea0369b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109549100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b53a53db18b6cd806eaf067d986ca4b4afa4bc87ac3fd7c15040454410616fc`
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
# Fri, 27 Jul 2018 13:30:08 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Fri, 27 Jul 2018 13:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:32:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:32:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:32:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:32:24 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:32:25 GMT
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
	-	`sha256:691c15736db6a170924f162ee63c6b1582489f7a990039199acf795aae6fd6b1`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed8bcd8c2f0303a6a05deae3e65fde8e8ddc63fb46c141420ec394a3bb6559`  
		Last Modified: Fri, 27 Jul 2018 13:44:01 GMT  
		Size: 73.1 MB (73066459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9a3892a2bc7cb339d0e93ed66c1a44e00b3f92b570918bc3a98768c7ec232`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b837b5873b40d6330e8383c8a2013ee67ab0becc71f7e87de821b98e484e0fc8`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:27ed397ef14a40cbe130aab5cb9513f763f19c1c5de79d3b543a2c0af4530489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123347650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c67c96ea2a4c9f89dd14b49b1d627992e525567c696af8fb2879d187ed4b411`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:58:52 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:58:56 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:59:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:57 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:05:04 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:33 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:05:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b4c938994d5c963e5d1b5f730b7eeea504e516bde1a732ff598d2f8a423c`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767ff2353958c8b501cda45d33bbf209ac9a806257dcdcad010ae9e68ff1b46`  
		Last Modified: Thu, 26 Jul 2018 10:16:18 GMT  
		Size: 79.0 MB (79014888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71633793a9e44f2e3f86177f21a8233d375fd8145d37db1cf46c968752a41837`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c72b4ed0dcf62352afa0bdfd1a755cd13582cf8a019cf5dabfbfa0bf817601`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:edef80de393cf4a79504168c663f8b0c6b15060333e5a7d7aee3dc0a4de6e927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:9b60ca2975f7def2511e41ba690d04b6c137bcdf69bf40458dfd44fa31d145ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114487280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c73b3262fff7ac54635d58e13deb8cc8e224dddf3b2b0e2abfc0ad9d508f54c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 23:28:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:29:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:29:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:29:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:29:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:29:25 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf8ee7af181ecfed99540aa8718bfa106bb9e0cb2f89dce38bed02dc389ec3`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa500ed3b27c7dac758267a1dea66475aa658715ea631959d35d43130c5d7f7`  
		Last Modified: Thu, 26 Jul 2018 23:34:40 GMT  
		Size: 74.2 MB (74173284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632a62957830aaa6cdcd1659f1a2f401c5e561f252d9881e59020f641dfa7ae`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5b3adf01db9eead0e53842895e0dec4406e6be012d25399d86e3c85fed0ec`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:acf0b89aadd27084c72ad521ae4b630659e56304ec876be2665041361ea0369b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109549100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b53a53db18b6cd806eaf067d986ca4b4afa4bc87ac3fd7c15040454410616fc`
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
# Fri, 27 Jul 2018 13:30:08 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Fri, 27 Jul 2018 13:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:32:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:32:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:32:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:32:24 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:32:25 GMT
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
	-	`sha256:691c15736db6a170924f162ee63c6b1582489f7a990039199acf795aae6fd6b1`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed8bcd8c2f0303a6a05deae3e65fde8e8ddc63fb46c141420ec394a3bb6559`  
		Last Modified: Fri, 27 Jul 2018 13:44:01 GMT  
		Size: 73.1 MB (73066459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9a3892a2bc7cb339d0e93ed66c1a44e00b3f92b570918bc3a98768c7ec232`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b837b5873b40d6330e8383c8a2013ee67ab0becc71f7e87de821b98e484e0fc8`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:27ed397ef14a40cbe130aab5cb9513f763f19c1c5de79d3b543a2c0af4530489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123347650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c67c96ea2a4c9f89dd14b49b1d627992e525567c696af8fb2879d187ed4b411`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:58:52 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:58:56 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:59:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:57 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:05:04 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:33 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:05:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b4c938994d5c963e5d1b5f730b7eeea504e516bde1a732ff598d2f8a423c`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767ff2353958c8b501cda45d33bbf209ac9a806257dcdcad010ae9e68ff1b46`  
		Last Modified: Thu, 26 Jul 2018 10:16:18 GMT  
		Size: 79.0 MB (79014888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71633793a9e44f2e3f86177f21a8233d375fd8145d37db1cf46c968752a41837`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c72b4ed0dcf62352afa0bdfd1a755cd13582cf8a019cf5dabfbfa0bf817601`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:2c80769443c2d41036d008a902515212593bea969c9f759a42d6a9c80aac8d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:8b635b677e61f587d8475c8ed59e7e2a5ae25c544b06fe07ff1ae6f9b5644a0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aff94e60a52772f86bcf128639375dc6cd2340727b8e75b8fa6e40782e56ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:52:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:52:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:52:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:53:09 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:53:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:53:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:53:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:53:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:53:59 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 31 Jul 2018 22:29:04 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Tue, 31 Jul 2018 22:29:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:35:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:35:42 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:35:43 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:35:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:35:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:35:44 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:35:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61355801131bc592c9c3907b1f9fb19012905d0a9cf90bc592a1564fa99ec46`  
		Last Modified: Wed, 25 Jul 2018 18:06:24 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2899b6e6aee14280c9dc5d1768b4cbc83c25506c9643ca01fd73b6d3ee919986`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c693e88547b35617fcca9a168c0bec807ded7f813fff11bfd89427e0df8aa0`  
		Last Modified: Wed, 25 Jul 2018 18:06:21 GMT  
		Size: 1.6 MB (1572110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd515ea5ed16ca9a99be8ad7fa0a3f6db44e88bc2a754f47c02ae30d4c816b9f`  
		Last Modified: Wed, 25 Jul 2018 18:06:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae142e39351bd327a749afa05d3a90e05733b088fa6f43d439957f38c6c67349`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 4.3 MB (4260949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffb9ffc838db5260c0a1061756ec0bcbb725642d40f2c387893dbbe7cc7dc3`  
		Last Modified: Wed, 25 Jul 2018 18:06:19 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93d6e7eda60cf2b82fa5d106f864395c07a2d2c9ae9b8a078d89166421c7c1d`  
		Last Modified: Tue, 31 Jul 2018 22:30:16 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ecf7bff5c4dc95a07849490eb55547cfc8a83bec3730d394ec9d0a3c4df2a`  
		Last Modified: Thu, 02 Aug 2018 22:39:11 GMT  
		Size: 45.3 MB (45278093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4844036229dd7ba0cf93567cf08eef7d69ebee0fd099f429934f4d1a90e2e0`  
		Last Modified: Thu, 02 Aug 2018 22:38:59 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b5a6ff830fe9751a9e5ef0e9a98630ff33a417ee1b22d53c73540d77d3fa6f`  
		Last Modified: Thu, 02 Aug 2018 22:38:57 GMT  
		Size: 119.0 B  
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
$ docker pull mariadb@sha256:2c80769443c2d41036d008a902515212593bea969c9f759a42d6a9c80aac8d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:8b635b677e61f587d8475c8ed59e7e2a5ae25c544b06fe07ff1ae6f9b5644a0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aff94e60a52772f86bcf128639375dc6cd2340727b8e75b8fa6e40782e56ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:52:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:52:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:52:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:53:09 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:53:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:53:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:53:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:53:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:53:59 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 31 Jul 2018 22:29:04 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Tue, 31 Jul 2018 22:29:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:35:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:35:42 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:35:43 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:35:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:35:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:35:44 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:35:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61355801131bc592c9c3907b1f9fb19012905d0a9cf90bc592a1564fa99ec46`  
		Last Modified: Wed, 25 Jul 2018 18:06:24 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2899b6e6aee14280c9dc5d1768b4cbc83c25506c9643ca01fd73b6d3ee919986`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c693e88547b35617fcca9a168c0bec807ded7f813fff11bfd89427e0df8aa0`  
		Last Modified: Wed, 25 Jul 2018 18:06:21 GMT  
		Size: 1.6 MB (1572110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd515ea5ed16ca9a99be8ad7fa0a3f6db44e88bc2a754f47c02ae30d4c816b9f`  
		Last Modified: Wed, 25 Jul 2018 18:06:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae142e39351bd327a749afa05d3a90e05733b088fa6f43d439957f38c6c67349`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 4.3 MB (4260949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffb9ffc838db5260c0a1061756ec0bcbb725642d40f2c387893dbbe7cc7dc3`  
		Last Modified: Wed, 25 Jul 2018 18:06:19 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93d6e7eda60cf2b82fa5d106f864395c07a2d2c9ae9b8a078d89166421c7c1d`  
		Last Modified: Tue, 31 Jul 2018 22:30:16 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ecf7bff5c4dc95a07849490eb55547cfc8a83bec3730d394ec9d0a3c4df2a`  
		Last Modified: Thu, 02 Aug 2018 22:39:11 GMT  
		Size: 45.3 MB (45278093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4844036229dd7ba0cf93567cf08eef7d69ebee0fd099f429934f4d1a90e2e0`  
		Last Modified: Thu, 02 Aug 2018 22:38:59 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b5a6ff830fe9751a9e5ef0e9a98630ff33a417ee1b22d53c73540d77d3fa6f`  
		Last Modified: Thu, 02 Aug 2018 22:38:57 GMT  
		Size: 119.0 B  
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
$ docker pull mariadb@sha256:2c80769443c2d41036d008a902515212593bea969c9f759a42d6a9c80aac8d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.61` - linux; amd64

```console
$ docker pull mariadb@sha256:8b635b677e61f587d8475c8ed59e7e2a5ae25c544b06fe07ff1ae6f9b5644a0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aff94e60a52772f86bcf128639375dc6cd2340727b8e75b8fa6e40782e56ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:52:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:52:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:52:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:53:09 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:53:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:53:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:53:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:53:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:53:59 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 31 Jul 2018 22:29:04 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Tue, 31 Jul 2018 22:29:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:35:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:35:42 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:35:43 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:35:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:35:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:35:44 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:35:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61355801131bc592c9c3907b1f9fb19012905d0a9cf90bc592a1564fa99ec46`  
		Last Modified: Wed, 25 Jul 2018 18:06:24 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2899b6e6aee14280c9dc5d1768b4cbc83c25506c9643ca01fd73b6d3ee919986`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c693e88547b35617fcca9a168c0bec807ded7f813fff11bfd89427e0df8aa0`  
		Last Modified: Wed, 25 Jul 2018 18:06:21 GMT  
		Size: 1.6 MB (1572110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd515ea5ed16ca9a99be8ad7fa0a3f6db44e88bc2a754f47c02ae30d4c816b9f`  
		Last Modified: Wed, 25 Jul 2018 18:06:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae142e39351bd327a749afa05d3a90e05733b088fa6f43d439957f38c6c67349`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 4.3 MB (4260949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffb9ffc838db5260c0a1061756ec0bcbb725642d40f2c387893dbbe7cc7dc3`  
		Last Modified: Wed, 25 Jul 2018 18:06:19 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93d6e7eda60cf2b82fa5d106f864395c07a2d2c9ae9b8a078d89166421c7c1d`  
		Last Modified: Tue, 31 Jul 2018 22:30:16 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ecf7bff5c4dc95a07849490eb55547cfc8a83bec3730d394ec9d0a3c4df2a`  
		Last Modified: Thu, 02 Aug 2018 22:39:11 GMT  
		Size: 45.3 MB (45278093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4844036229dd7ba0cf93567cf08eef7d69ebee0fd099f429934f4d1a90e2e0`  
		Last Modified: Thu, 02 Aug 2018 22:38:59 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b5a6ff830fe9751a9e5ef0e9a98630ff33a417ee1b22d53c73540d77d3fa6f`  
		Last Modified: Thu, 02 Aug 2018 22:38:57 GMT  
		Size: 119.0 B  
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
$ docker pull mariadb@sha256:2c80769443c2d41036d008a902515212593bea969c9f759a42d6a9c80aac8d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.61-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:8b635b677e61f587d8475c8ed59e7e2a5ae25c544b06fe07ff1ae6f9b5644a0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aff94e60a52772f86bcf128639375dc6cd2340727b8e75b8fa6e40782e56ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:52:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:52:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:52:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:53:09 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:53:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:53:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:53:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:53:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:53:59 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 31 Jul 2018 22:29:04 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Tue, 31 Jul 2018 22:29:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:35:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:35:42 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:35:43 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:35:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:35:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:35:44 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:35:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61355801131bc592c9c3907b1f9fb19012905d0a9cf90bc592a1564fa99ec46`  
		Last Modified: Wed, 25 Jul 2018 18:06:24 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2899b6e6aee14280c9dc5d1768b4cbc83c25506c9643ca01fd73b6d3ee919986`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c693e88547b35617fcca9a168c0bec807ded7f813fff11bfd89427e0df8aa0`  
		Last Modified: Wed, 25 Jul 2018 18:06:21 GMT  
		Size: 1.6 MB (1572110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd515ea5ed16ca9a99be8ad7fa0a3f6db44e88bc2a754f47c02ae30d4c816b9f`  
		Last Modified: Wed, 25 Jul 2018 18:06:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae142e39351bd327a749afa05d3a90e05733b088fa6f43d439957f38c6c67349`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 4.3 MB (4260949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffb9ffc838db5260c0a1061756ec0bcbb725642d40f2c387893dbbe7cc7dc3`  
		Last Modified: Wed, 25 Jul 2018 18:06:19 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93d6e7eda60cf2b82fa5d106f864395c07a2d2c9ae9b8a078d89166421c7c1d`  
		Last Modified: Tue, 31 Jul 2018 22:30:16 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ecf7bff5c4dc95a07849490eb55547cfc8a83bec3730d394ec9d0a3c4df2a`  
		Last Modified: Thu, 02 Aug 2018 22:39:11 GMT  
		Size: 45.3 MB (45278093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4844036229dd7ba0cf93567cf08eef7d69ebee0fd099f429934f4d1a90e2e0`  
		Last Modified: Thu, 02 Aug 2018 22:38:59 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b5a6ff830fe9751a9e5ef0e9a98630ff33a417ee1b22d53c73540d77d3fa6f`  
		Last Modified: Thu, 02 Aug 2018 22:38:57 GMT  
		Size: 119.0 B  
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
$ docker pull mariadb@sha256:2c80769443c2d41036d008a902515212593bea969c9f759a42d6a9c80aac8d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:8b635b677e61f587d8475c8ed59e7e2a5ae25c544b06fe07ff1ae6f9b5644a0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aff94e60a52772f86bcf128639375dc6cd2340727b8e75b8fa6e40782e56ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:52:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:52:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:52:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:53:09 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:53:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:53:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:53:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:53:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:53:59 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 31 Jul 2018 22:29:04 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Tue, 31 Jul 2018 22:29:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:35:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:35:42 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:35:43 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:35:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:35:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:35:44 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:35:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61355801131bc592c9c3907b1f9fb19012905d0a9cf90bc592a1564fa99ec46`  
		Last Modified: Wed, 25 Jul 2018 18:06:24 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2899b6e6aee14280c9dc5d1768b4cbc83c25506c9643ca01fd73b6d3ee919986`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c693e88547b35617fcca9a168c0bec807ded7f813fff11bfd89427e0df8aa0`  
		Last Modified: Wed, 25 Jul 2018 18:06:21 GMT  
		Size: 1.6 MB (1572110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd515ea5ed16ca9a99be8ad7fa0a3f6db44e88bc2a754f47c02ae30d4c816b9f`  
		Last Modified: Wed, 25 Jul 2018 18:06:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae142e39351bd327a749afa05d3a90e05733b088fa6f43d439957f38c6c67349`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 4.3 MB (4260949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffb9ffc838db5260c0a1061756ec0bcbb725642d40f2c387893dbbe7cc7dc3`  
		Last Modified: Wed, 25 Jul 2018 18:06:19 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93d6e7eda60cf2b82fa5d106f864395c07a2d2c9ae9b8a078d89166421c7c1d`  
		Last Modified: Tue, 31 Jul 2018 22:30:16 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ecf7bff5c4dc95a07849490eb55547cfc8a83bec3730d394ec9d0a3c4df2a`  
		Last Modified: Thu, 02 Aug 2018 22:39:11 GMT  
		Size: 45.3 MB (45278093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4844036229dd7ba0cf93567cf08eef7d69ebee0fd099f429934f4d1a90e2e0`  
		Last Modified: Thu, 02 Aug 2018 22:38:59 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b5a6ff830fe9751a9e5ef0e9a98630ff33a417ee1b22d53c73540d77d3fa6f`  
		Last Modified: Thu, 02 Aug 2018 22:38:57 GMT  
		Size: 119.0 B  
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
$ docker pull mariadb@sha256:2c80769443c2d41036d008a902515212593bea969c9f759a42d6a9c80aac8d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:8b635b677e61f587d8475c8ed59e7e2a5ae25c544b06fe07ff1ae6f9b5644a0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aff94e60a52772f86bcf128639375dc6cd2340727b8e75b8fa6e40782e56ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:52:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:52:49 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:52:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:53:09 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:53:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:53:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:53:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:53:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:53:59 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 31 Jul 2018 22:29:04 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Tue, 31 Jul 2018 22:29:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 02 Aug 2018 22:35:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 02 Aug 2018 22:35:42 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Aug 2018 22:35:43 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 02 Aug 2018 22:35:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 02 Aug 2018 22:35:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Aug 2018 22:35:44 GMT
EXPOSE 3306/tcp
# Thu, 02 Aug 2018 22:35:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61355801131bc592c9c3907b1f9fb19012905d0a9cf90bc592a1564fa99ec46`  
		Last Modified: Wed, 25 Jul 2018 18:06:24 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2899b6e6aee14280c9dc5d1768b4cbc83c25506c9643ca01fd73b6d3ee919986`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c693e88547b35617fcca9a168c0bec807ded7f813fff11bfd89427e0df8aa0`  
		Last Modified: Wed, 25 Jul 2018 18:06:21 GMT  
		Size: 1.6 MB (1572110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd515ea5ed16ca9a99be8ad7fa0a3f6db44e88bc2a754f47c02ae30d4c816b9f`  
		Last Modified: Wed, 25 Jul 2018 18:06:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae142e39351bd327a749afa05d3a90e05733b088fa6f43d439957f38c6c67349`  
		Last Modified: Wed, 25 Jul 2018 18:06:23 GMT  
		Size: 4.3 MB (4260949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffb9ffc838db5260c0a1061756ec0bcbb725642d40f2c387893dbbe7cc7dc3`  
		Last Modified: Wed, 25 Jul 2018 18:06:19 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93d6e7eda60cf2b82fa5d106f864395c07a2d2c9ae9b8a078d89166421c7c1d`  
		Last Modified: Tue, 31 Jul 2018 22:30:16 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ecf7bff5c4dc95a07849490eb55547cfc8a83bec3730d394ec9d0a3c4df2a`  
		Last Modified: Thu, 02 Aug 2018 22:39:11 GMT  
		Size: 45.3 MB (45278093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4844036229dd7ba0cf93567cf08eef7d69ebee0fd099f429934f4d1a90e2e0`  
		Last Modified: Thu, 02 Aug 2018 22:38:59 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b5a6ff830fe9751a9e5ef0e9a98630ff33a417ee1b22d53c73540d77d3fa6f`  
		Last Modified: Thu, 02 Aug 2018 22:38:57 GMT  
		Size: 119.0 B  
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
$ docker pull mariadb@sha256:edef80de393cf4a79504168c663f8b0c6b15060333e5a7d7aee3dc0a4de6e927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:9b60ca2975f7def2511e41ba690d04b6c137bcdf69bf40458dfd44fa31d145ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114487280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c73b3262fff7ac54635d58e13deb8cc8e224dddf3b2b0e2abfc0ad9d508f54c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 23:28:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:29:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:29:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:29:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:29:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:29:25 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf8ee7af181ecfed99540aa8718bfa106bb9e0cb2f89dce38bed02dc389ec3`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa500ed3b27c7dac758267a1dea66475aa658715ea631959d35d43130c5d7f7`  
		Last Modified: Thu, 26 Jul 2018 23:34:40 GMT  
		Size: 74.2 MB (74173284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632a62957830aaa6cdcd1659f1a2f401c5e561f252d9881e59020f641dfa7ae`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5b3adf01db9eead0e53842895e0dec4406e6be012d25399d86e3c85fed0ec`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:acf0b89aadd27084c72ad521ae4b630659e56304ec876be2665041361ea0369b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109549100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b53a53db18b6cd806eaf067d986ca4b4afa4bc87ac3fd7c15040454410616fc`
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
# Fri, 27 Jul 2018 13:30:08 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Fri, 27 Jul 2018 13:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:32:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:32:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:32:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:32:24 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:32:25 GMT
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
	-	`sha256:691c15736db6a170924f162ee63c6b1582489f7a990039199acf795aae6fd6b1`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed8bcd8c2f0303a6a05deae3e65fde8e8ddc63fb46c141420ec394a3bb6559`  
		Last Modified: Fri, 27 Jul 2018 13:44:01 GMT  
		Size: 73.1 MB (73066459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9a3892a2bc7cb339d0e93ed66c1a44e00b3f92b570918bc3a98768c7ec232`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b837b5873b40d6330e8383c8a2013ee67ab0becc71f7e87de821b98e484e0fc8`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:27ed397ef14a40cbe130aab5cb9513f763f19c1c5de79d3b543a2c0af4530489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123347650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c67c96ea2a4c9f89dd14b49b1d627992e525567c696af8fb2879d187ed4b411`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:58:52 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:58:56 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:59:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:57 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:05:04 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:33 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:05:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b4c938994d5c963e5d1b5f730b7eeea504e516bde1a732ff598d2f8a423c`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767ff2353958c8b501cda45d33bbf209ac9a806257dcdcad010ae9e68ff1b46`  
		Last Modified: Thu, 26 Jul 2018 10:16:18 GMT  
		Size: 79.0 MB (79014888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71633793a9e44f2e3f86177f21a8233d375fd8145d37db1cf46c968752a41837`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c72b4ed0dcf62352afa0bdfd1a755cd13582cf8a019cf5dabfbfa0bf817601`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:edef80de393cf4a79504168c663f8b0c6b15060333e5a7d7aee3dc0a4de6e927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:9b60ca2975f7def2511e41ba690d04b6c137bcdf69bf40458dfd44fa31d145ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114487280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c73b3262fff7ac54635d58e13deb8cc8e224dddf3b2b0e2abfc0ad9d508f54c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 23:28:02 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:02 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 23:28:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 23:28:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 23:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:28:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 23:28:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 23:28:34 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 23:28:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 23:29:23 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 23:29:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 23:29:24 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:29:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 23:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 23:29:25 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 23:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf7ebdee0e69e4d1be7511c28abaaa5e75ac2702b6ede8700a23ef7d859163e`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea18a89ab6f326a4cda6b6c3d652ac7315819a722e320069003c0c58ca2b76`  
		Last Modified: Thu, 26 Jul 2018 23:34:18 GMT  
		Size: 4.8 MB (4803405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a351308aea63c21670a283bb53f8141a6b2331f1975238b1656cc7ccdd86df`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 862.8 KB (862812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef24c7657c2f3b9d1014c590ed04871dc937759b9600318f3cb1cfe6701c39e9`  
		Last Modified: Thu, 26 Jul 2018 23:34:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b5cb4861e5b4e541b958a9441f7487d95b6adbc6a7516d11779000dafe798a`  
		Last Modified: Thu, 26 Jul 2018 23:34:17 GMT  
		Size: 3.0 MB (2956421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed6d999842e662a263c45a1067be5cb25f0477cc906ec2fc55c227c28f88586`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf8ee7af181ecfed99540aa8718bfa106bb9e0cb2f89dce38bed02dc389ec3`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa500ed3b27c7dac758267a1dea66475aa658715ea631959d35d43130c5d7f7`  
		Last Modified: Thu, 26 Jul 2018 23:34:40 GMT  
		Size: 74.2 MB (74173284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5632a62957830aaa6cdcd1659f1a2f401c5e561f252d9881e59020f641dfa7ae`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5b3adf01db9eead0e53842895e0dec4406e6be012d25399d86e3c85fed0ec`  
		Last Modified: Thu, 26 Jul 2018 23:34:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:acf0b89aadd27084c72ad521ae4b630659e56304ec876be2665041361ea0369b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109549100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b53a53db18b6cd806eaf067d986ca4b4afa4bc87ac3fd7c15040454410616fc`
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
# Fri, 27 Jul 2018 13:30:08 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Fri, 27 Jul 2018 13:30:11 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 27 Jul 2018 13:32:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 13:32:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 13:32:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 27 Jul 2018 13:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 27 Jul 2018 13:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 13:32:24 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 13:32:25 GMT
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
	-	`sha256:691c15736db6a170924f162ee63c6b1582489f7a990039199acf795aae6fd6b1`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed8bcd8c2f0303a6a05deae3e65fde8e8ddc63fb46c141420ec394a3bb6559`  
		Last Modified: Fri, 27 Jul 2018 13:44:01 GMT  
		Size: 73.1 MB (73066459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9a3892a2bc7cb339d0e93ed66c1a44e00b3f92b570918bc3a98768c7ec232`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b837b5873b40d6330e8383c8a2013ee67ab0becc71f7e87de821b98e484e0fc8`  
		Last Modified: Fri, 27 Jul 2018 13:43:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:27ed397ef14a40cbe130aab5cb9513f763f19c1c5de79d3b543a2c0af4530489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123347650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c67c96ea2a4c9f89dd14b49b1d627992e525567c696af8fb2879d187ed4b411`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:54:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:56:14 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:56:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:57:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:57:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:58:40 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:58:47 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:58:52 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:58:56 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:59:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:51 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:57 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:05:04 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:33 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:05:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773d7ecf208b8957ad15e329323bd5e0fa0741f3538b79839f860f989a8fe295`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f1796190792f371c3810a572f543d6a0b38e3bebeb44c86f1697a36e89fff8`  
		Last Modified: Thu, 26 Jul 2018 10:15:59 GMT  
		Size: 5.6 MB (5602581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa4824a5594eeeabc475484226b2f24549105aa6093abf77c2c6e50d6384a34`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 831.5 KB (831475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c626d6ff9bee9abfe1df1c5cd86dff60d00e0966d25278f9341eaf2fdeffdb`  
		Last Modified: Thu, 26 Jul 2018 10:15:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332aa0f08c21bd46281bae464bcfad418c0bc0c7261fcaf593cbc63466aa8acd`  
		Last Modified: Thu, 26 Jul 2018 10:15:58 GMT  
		Size: 2.8 MB (2838745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8668a2cab65c582e0dd2b812dced2591838987736f6d855d417967cd646a744`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b4c938994d5c963e5d1b5f730b7eeea504e516bde1a732ff598d2f8a423c`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767ff2353958c8b501cda45d33bbf209ac9a806257dcdcad010ae9e68ff1b46`  
		Last Modified: Thu, 26 Jul 2018 10:16:18 GMT  
		Size: 79.0 MB (79014888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71633793a9e44f2e3f86177f21a8233d375fd8145d37db1cf46c968752a41837`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c72b4ed0dcf62352afa0bdfd1a755cd13582cf8a019cf5dabfbfa0bf817601`  
		Last Modified: Thu, 26 Jul 2018 10:15:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
