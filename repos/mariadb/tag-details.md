<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.38`](#mariadb10038)
-	[`mariadb:10.0.38-xenial`](#mariadb10038-xenial)
-	[`mariadb:10.0-xenial`](#mariadb100-xenial)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.40`](#mariadb10140)
-	[`mariadb:10.1.40-bionic`](#mariadb10140-bionic)
-	[`mariadb:10.1-bionic`](#mariadb101-bionic)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.24`](#mariadb10224)
-	[`mariadb:10.2.24-bionic`](#mariadb10224-bionic)
-	[`mariadb:10.2-bionic`](#mariadb102-bionic)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.15`](#mariadb10315)
-	[`mariadb:10.3.15-bionic`](#mariadb10315-bionic)
-	[`mariadb:10.3-bionic`](#mariadb103-bionic)
-	[`mariadb:10.4`](#mariadb104)
-	[`mariadb:10.4.5`](#mariadb1045)
-	[`mariadb:10.4.5-bionic`](#mariadb1045-bionic)
-	[`mariadb:10.4-bionic`](#mariadb104-bionic)
-	[`mariadb:10-bionic`](#mariadb10-bionic)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.64`](#mariadb5564)
-	[`mariadb:5.5.64-trusty`](#mariadb5564-trusty)
-	[`mariadb:5.5-trusty`](#mariadb55-trusty)
-	[`mariadb:5-trusty`](#mariadb5-trusty)
-	[`mariadb:bionic`](#mariadbbionic)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:rc`](#mariadbrc)
-	[`mariadb:rc-bionic`](#mariadbrc-bionic)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:db6e7bda67ea88efb00ba4ad82cb72dfee8938935914ae0948f6af523d398ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:83382f69f154c6d09a6bf05622513ad37906cad52da74d4d8c799d2bc3b7f913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bb20373d81e6601750192197931de1496fed565dfd4a35ba2ebd050de5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:23 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:46:58 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:46:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:47:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:47:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:47:44 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:45 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:47:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9104943e23ec4f42cc42d4b1e5c51a9b80d86791854fde64e1ade9fb468e17f9`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae510462589d8cdc44d2c6a3b1267f0e3874efc2916f6ed6cef9f29c25c8bb67`  
		Last Modified: Thu, 16 May 2019 00:48:46 GMT  
		Size: 74.3 MB (74336931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23646ae61e9341bbbd0601b48b1a58d2198c7069c7d46554d7ecdbf51b419a`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c301b916a4e0d381e7c3b3f6e80d04d0afec7a94d44a986bc1d43a645cb74cc`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:34a7ee3f52becbd1b8947f16c02b52c6e9f3dfbd101d0953c1df7421f188c5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107083267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f256951026db34f1432226bfacc9f3f34afa1497e862d900413d3258a64fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:51:33 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:51:34 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:51:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:52:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:52:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:52:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:18 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:52:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac1d85e46e6a58047ce8cafb0e9cd8087bede9b95ce1e5127ff6603e28e79`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693148785c5e0724d9368261d10ca53d56137766aa0ed33b46c19db837e4bdb9`  
		Last Modified: Thu, 16 May 2019 00:59:27 GMT  
		Size: 73.2 MB (73249349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c668e859e1269ecf88a6dabfc552029baa5e0ad77d537305eae5080653530d5`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf4472df7bc3ef428b1ebf7fa8f63403037b1ddb1be421926e8607a85509fff`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2f4e89d2af187885e7b1359cf0bf0337ea0114fbb31fb7052b062c6732f505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119153967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4dbdfd72e358e62aa30ede0490b8848da32c6e8434ed63d4eb10575bf9a78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:14 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:41:30 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:41:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:43:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:43:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:43:25 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:43:40 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd491ba73457f25531c69fc10f25207fb1ac7f5901bea97c61727df1bdd857c`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d9a6121c80b4ab5c8c776d3e7c22f95b2f36e93b0a0a97dd6deb1251014a2`  
		Last Modified: Thu, 16 May 2019 00:45:02 GMT  
		Size: 77.3 MB (77260760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590ae0a85f0a8ebe0e4777564149a083c6bd172a66e92a45e9178db59f79cfa7`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6e2a60ee063f990c9dff12c518a91a419161774fb86e09f9d3908b44df0cbb`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:8beadfe2a5ae80c95ef8a8bd1d75b0c2fc84e18b7f22c6532a646cfa932b2ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:0cbbb4fd664ae995d39c192b4dfc8c6ae15585556f59d041b6cdee18a9fad9fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116406387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bde56970c6baf74059e7c713f812a6c26d872bed39503330dfeffff0658d5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:45:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:45:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:45:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:45:33 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:45:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:45:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:45:53 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 22:45:53 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 22:45:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:46:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:46:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:46:35 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:46:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:46:36 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:46:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000c92a2d2d6812f58ad5a60718db8724c8767d40f8569cc96a2c7566d90c75b`  
		Last Modified: Wed, 15 May 2019 22:48:55 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42857d2f5cd35d69255e11a6e3d88ba0249b61e74927c24545dfbb1b702cfb`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d773356d26065e5caded0b53dc37db1a299c440eb0231855a2e6b0040d09ac0f`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 840.3 KB (840319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0de124a7e1d82222dd954bfbc0daea6e805d27cbbe859e5fd722c8617656994`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed402d23187f1f15c0845a184def96c9f495ad63c960dd8a957179c23f991e1b`  
		Last Modified: Wed, 15 May 2019 22:48:56 GMT  
		Size: 7.3 MB (7331373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c058476c602608675cf65a4bad111c88ea72e1f21f797e0304a310b98f64e3a4`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 26.5 KB (26545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc51145995ae8bcabb62147535b959fb87e3af15011929eac43ba635a69dcf12`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be55ca9c798cf41154d497fa34d74915d7d40f47b339f3648a34629789cd4b`  
		Last Modified: Wed, 15 May 2019 22:49:06 GMT  
		Size: 64.4 MB (64432958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309a6f05567569510d4ea8975537342dc870deebfe8f3854c6c4050e8e626c10`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36476a765ef4fdfc04d37734bae496a246ab28911178423bd28199b484e55288`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:fbe85b0ad2d0232ea66b338f9969e874d5802fe74f11831dd8d655ce76972a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99396986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495e87e3d26e15c5c8cf764d2c52256d9ad097b528745449f4da24a813c96694`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:54:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:55:10 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:55:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:55:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:55:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:56:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:56:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:56:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:56:24 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 16 May 2019 00:56:25 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Thu, 16 May 2019 00:56:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:57:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:57:22 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:57:23 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:57:29 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:57:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419368b43036eb3bde11667d927888f442623955c05a0928df6c8dd7c3a123f`  
		Last Modified: Thu, 16 May 2019 01:01:24 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05512e3bb8917253df6e3b9640e28a497d5df4e8957a943fd1059ff4176f94`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeafb352200408552e04d46c295632989937181ed66759ecafaf703d3edfc16`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 807.2 KB (807201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a44d3ba903fd272682e0c2e1506af7d49fefa063c3adc28e8173cdb2fe47ba`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605cca8bc800fffed812d44abe42b7f5a1e5f53e5af43e663184ed6f8806f7f0`  
		Last Modified: Thu, 16 May 2019 01:01:28 GMT  
		Size: 6.4 MB (6410046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b947216903c86ff940195bc642bb6332b6ab61815d87c06d8d667f43ed93dff7`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 26.5 KB (26548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d142341a39c61d0acf68e09e41fd2f9366c31d221a4a2f0074a99219bd2c109`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476b1c7d940b7c745a66c42c4681e590f8409abd3dcc893603a2cbe2d0d17f`  
		Last Modified: Thu, 16 May 2019 01:01:38 GMT  
		Size: 52.4 MB (52410388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1ce1b935c25eb01c4d88d7035c0930de09395667897b8e8e12a21352b3240a`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b75270f845c6e675b01f83b43a0f45f66e8477c5b5204baa361775167017afc`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:daabe3c497bda2214f9110995aefa2455f024ddf3c53b95fe4e45e2d5da2f633
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115007560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41d6f23ce29354578bffcb7c6de769950ae5127cda7831b5ad29ee5d5fef230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:47:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:47:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:36 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 22:47:37 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 22:47:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:48:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:48:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:48:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:48:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:48:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:48:24 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:48:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b125fab6934780c5576dd32dd8102bd6bb6710e6df8a712db932609fc5bb4a5e`  
		Last Modified: Wed, 15 May 2019 22:50:00 GMT  
		Size: 2.0 KB (1973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9181c88af34399e0d4086d5fdcc7664bf30271478836e9652e8773fe31f424b7`  
		Last Modified: Wed, 15 May 2019 22:50:00 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b538016673ea806cd6d50ea2837c6a19e597f1decaad17dfd1683ec5d1cdc9d9`  
		Last Modified: Wed, 15 May 2019 22:49:59 GMT  
		Size: 819.4 KB (819371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c18fb97e20b4f9de15a4f37d6eb526cdb690c82591fe0f85dd2ac0d186791f`  
		Last Modified: Wed, 15 May 2019 22:49:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990476f48b4c2ae9bc0a609797b1e02bd12125876f403f53c5ef11dce48f0619`  
		Last Modified: Wed, 15 May 2019 22:50:03 GMT  
		Size: 7.5 MB (7458333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90456dbd013a59357bdf017ad1e0d8e671ee2a5840cc2bdd4725f45999511748`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add3de391d1aaa48b666ed59cdb4148a0083a52a0ffd787b81c21a938cc3f1e`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5023b85cca543ab8f4a65a67425fdd0c7f52a251014f56fd04aea9e01b2ab0a`  
		Last Modified: Wed, 15 May 2019 22:50:17 GMT  
		Size: 62.8 MB (62771630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3a8d5028272a9473efa302d05c4e50aa0a5e32076bd36dc4491e5e67ebaa41`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c481c455038d3f2adf209f31c56f65d0ffd0ca0f522517c046ef7b61dba743b`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:1df209e0b0aaa559bd1998df1102cdd906d051bf4d96a80b2dfe36dc5fdb6a9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109676905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277d15b08afa5049df6778dea7799ba0d435a2624520e3db3a39237d56c54a32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:18:45 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:19:01 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:19:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:20:05 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:20:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:21:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:21:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:21:45 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 23:21:47 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 23:21:55 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:24:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:24:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:24:32 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:24:42 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc397332e932c93552bb00cf2518d602211ab0ac01b670e94fd120e2f88613b`  
		Last Modified: Wed, 15 May 2019 23:32:17 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa66fc2b94094ee2076f59321cc9bb278df22929fd817b8dc1064894914166`  
		Last Modified: Wed, 15 May 2019 23:32:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1a299c64a56befa7680c6c51a35181da915c582033e2380b72a0f00e44c085`  
		Last Modified: Wed, 15 May 2019 23:32:14 GMT  
		Size: 808.9 KB (808917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf1c6a6c4a07f2edcce7e49141d0a236e6ee642f4a60331773f10ac5666c40`  
		Last Modified: Wed, 15 May 2019 23:32:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d039c27b6e379f8eb1d75c0672c85c3083333c359c3b76a39b798b4a52f1aa1`  
		Last Modified: Wed, 15 May 2019 23:32:21 GMT  
		Size: 7.2 MB (7219237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d075b7e2af65d0bcdedc3683d9673a667a879c55959d203816d583e80ce5`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 26.5 KB (26548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c29888cc206bebb1c2a3cc2a01673f5a2abcda9e75dba1c35e8d61d758c6ada`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d0b1b44dfcdb9c69ecc7dff80c40407ca77196217949cd72dedd2e070718a1`  
		Last Modified: Wed, 15 May 2019 23:32:40 GMT  
		Size: 55.7 MB (55678980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d78d76b5c066bc82fdb4953966e1ab8db78a5e1c1578db4ca85fb99db0b239d`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fd9fa72f580f9d32ecc14db3a01d8b5a8c994e4d19510057a05575c887611b`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.38`

```console
$ docker pull mariadb@sha256:8beadfe2a5ae80c95ef8a8bd1d75b0c2fc84e18b7f22c6532a646cfa932b2ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.38` - linux; amd64

```console
$ docker pull mariadb@sha256:0cbbb4fd664ae995d39c192b4dfc8c6ae15585556f59d041b6cdee18a9fad9fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116406387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bde56970c6baf74059e7c713f812a6c26d872bed39503330dfeffff0658d5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:45:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:45:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:45:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:45:33 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:45:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:45:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:45:53 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 22:45:53 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 22:45:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:46:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:46:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:46:35 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:46:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:46:36 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:46:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000c92a2d2d6812f58ad5a60718db8724c8767d40f8569cc96a2c7566d90c75b`  
		Last Modified: Wed, 15 May 2019 22:48:55 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42857d2f5cd35d69255e11a6e3d88ba0249b61e74927c24545dfbb1b702cfb`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d773356d26065e5caded0b53dc37db1a299c440eb0231855a2e6b0040d09ac0f`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 840.3 KB (840319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0de124a7e1d82222dd954bfbc0daea6e805d27cbbe859e5fd722c8617656994`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed402d23187f1f15c0845a184def96c9f495ad63c960dd8a957179c23f991e1b`  
		Last Modified: Wed, 15 May 2019 22:48:56 GMT  
		Size: 7.3 MB (7331373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c058476c602608675cf65a4bad111c88ea72e1f21f797e0304a310b98f64e3a4`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 26.5 KB (26545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc51145995ae8bcabb62147535b959fb87e3af15011929eac43ba635a69dcf12`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be55ca9c798cf41154d497fa34d74915d7d40f47b339f3648a34629789cd4b`  
		Last Modified: Wed, 15 May 2019 22:49:06 GMT  
		Size: 64.4 MB (64432958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309a6f05567569510d4ea8975537342dc870deebfe8f3854c6c4050e8e626c10`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36476a765ef4fdfc04d37734bae496a246ab28911178423bd28199b484e55288`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:fbe85b0ad2d0232ea66b338f9969e874d5802fe74f11831dd8d655ce76972a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99396986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495e87e3d26e15c5c8cf764d2c52256d9ad097b528745449f4da24a813c96694`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:54:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:55:10 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:55:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:55:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:55:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:56:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:56:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:56:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:56:24 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 16 May 2019 00:56:25 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Thu, 16 May 2019 00:56:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:57:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:57:22 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:57:23 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:57:29 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:57:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419368b43036eb3bde11667d927888f442623955c05a0928df6c8dd7c3a123f`  
		Last Modified: Thu, 16 May 2019 01:01:24 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05512e3bb8917253df6e3b9640e28a497d5df4e8957a943fd1059ff4176f94`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeafb352200408552e04d46c295632989937181ed66759ecafaf703d3edfc16`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 807.2 KB (807201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a44d3ba903fd272682e0c2e1506af7d49fefa063c3adc28e8173cdb2fe47ba`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605cca8bc800fffed812d44abe42b7f5a1e5f53e5af43e663184ed6f8806f7f0`  
		Last Modified: Thu, 16 May 2019 01:01:28 GMT  
		Size: 6.4 MB (6410046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b947216903c86ff940195bc642bb6332b6ab61815d87c06d8d667f43ed93dff7`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 26.5 KB (26548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d142341a39c61d0acf68e09e41fd2f9366c31d221a4a2f0074a99219bd2c109`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476b1c7d940b7c745a66c42c4681e590f8409abd3dcc893603a2cbe2d0d17f`  
		Last Modified: Thu, 16 May 2019 01:01:38 GMT  
		Size: 52.4 MB (52410388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1ce1b935c25eb01c4d88d7035c0930de09395667897b8e8e12a21352b3240a`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b75270f845c6e675b01f83b43a0f45f66e8477c5b5204baa361775167017afc`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38` - linux; 386

```console
$ docker pull mariadb@sha256:daabe3c497bda2214f9110995aefa2455f024ddf3c53b95fe4e45e2d5da2f633
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115007560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41d6f23ce29354578bffcb7c6de769950ae5127cda7831b5ad29ee5d5fef230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:47:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:47:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:36 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 22:47:37 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 22:47:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:48:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:48:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:48:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:48:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:48:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:48:24 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:48:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b125fab6934780c5576dd32dd8102bd6bb6710e6df8a712db932609fc5bb4a5e`  
		Last Modified: Wed, 15 May 2019 22:50:00 GMT  
		Size: 2.0 KB (1973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9181c88af34399e0d4086d5fdcc7664bf30271478836e9652e8773fe31f424b7`  
		Last Modified: Wed, 15 May 2019 22:50:00 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b538016673ea806cd6d50ea2837c6a19e597f1decaad17dfd1683ec5d1cdc9d9`  
		Last Modified: Wed, 15 May 2019 22:49:59 GMT  
		Size: 819.4 KB (819371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c18fb97e20b4f9de15a4f37d6eb526cdb690c82591fe0f85dd2ac0d186791f`  
		Last Modified: Wed, 15 May 2019 22:49:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990476f48b4c2ae9bc0a609797b1e02bd12125876f403f53c5ef11dce48f0619`  
		Last Modified: Wed, 15 May 2019 22:50:03 GMT  
		Size: 7.5 MB (7458333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90456dbd013a59357bdf017ad1e0d8e671ee2a5840cc2bdd4725f45999511748`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add3de391d1aaa48b666ed59cdb4148a0083a52a0ffd787b81c21a938cc3f1e`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5023b85cca543ab8f4a65a67425fdd0c7f52a251014f56fd04aea9e01b2ab0a`  
		Last Modified: Wed, 15 May 2019 22:50:17 GMT  
		Size: 62.8 MB (62771630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3a8d5028272a9473efa302d05c4e50aa0a5e32076bd36dc4491e5e67ebaa41`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c481c455038d3f2adf209f31c56f65d0ffd0ca0f522517c046ef7b61dba743b`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38` - linux; ppc64le

```console
$ docker pull mariadb@sha256:1df209e0b0aaa559bd1998df1102cdd906d051bf4d96a80b2dfe36dc5fdb6a9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109676905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277d15b08afa5049df6778dea7799ba0d435a2624520e3db3a39237d56c54a32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:18:45 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:19:01 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:19:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:20:05 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:20:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:21:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:21:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:21:45 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 23:21:47 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 23:21:55 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:24:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:24:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:24:32 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:24:42 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc397332e932c93552bb00cf2518d602211ab0ac01b670e94fd120e2f88613b`  
		Last Modified: Wed, 15 May 2019 23:32:17 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa66fc2b94094ee2076f59321cc9bb278df22929fd817b8dc1064894914166`  
		Last Modified: Wed, 15 May 2019 23:32:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1a299c64a56befa7680c6c51a35181da915c582033e2380b72a0f00e44c085`  
		Last Modified: Wed, 15 May 2019 23:32:14 GMT  
		Size: 808.9 KB (808917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf1c6a6c4a07f2edcce7e49141d0a236e6ee642f4a60331773f10ac5666c40`  
		Last Modified: Wed, 15 May 2019 23:32:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d039c27b6e379f8eb1d75c0672c85c3083333c359c3b76a39b798b4a52f1aa1`  
		Last Modified: Wed, 15 May 2019 23:32:21 GMT  
		Size: 7.2 MB (7219237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d075b7e2af65d0bcdedc3683d9673a667a879c55959d203816d583e80ce5`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 26.5 KB (26548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c29888cc206bebb1c2a3cc2a01673f5a2abcda9e75dba1c35e8d61d758c6ada`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d0b1b44dfcdb9c69ecc7dff80c40407ca77196217949cd72dedd2e070718a1`  
		Last Modified: Wed, 15 May 2019 23:32:40 GMT  
		Size: 55.7 MB (55678980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d78d76b5c066bc82fdb4953966e1ab8db78a5e1c1578db4ca85fb99db0b239d`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fd9fa72f580f9d32ecc14db3a01d8b5a8c994e4d19510057a05575c887611b`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.38-xenial`

```console
$ docker pull mariadb@sha256:8beadfe2a5ae80c95ef8a8bd1d75b0c2fc84e18b7f22c6532a646cfa932b2ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.38-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:0cbbb4fd664ae995d39c192b4dfc8c6ae15585556f59d041b6cdee18a9fad9fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116406387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bde56970c6baf74059e7c713f812a6c26d872bed39503330dfeffff0658d5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:45:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:45:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:45:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:45:33 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:45:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:45:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:45:53 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 22:45:53 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 22:45:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:46:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:46:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:46:35 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:46:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:46:36 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:46:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000c92a2d2d6812f58ad5a60718db8724c8767d40f8569cc96a2c7566d90c75b`  
		Last Modified: Wed, 15 May 2019 22:48:55 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42857d2f5cd35d69255e11a6e3d88ba0249b61e74927c24545dfbb1b702cfb`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d773356d26065e5caded0b53dc37db1a299c440eb0231855a2e6b0040d09ac0f`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 840.3 KB (840319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0de124a7e1d82222dd954bfbc0daea6e805d27cbbe859e5fd722c8617656994`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed402d23187f1f15c0845a184def96c9f495ad63c960dd8a957179c23f991e1b`  
		Last Modified: Wed, 15 May 2019 22:48:56 GMT  
		Size: 7.3 MB (7331373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c058476c602608675cf65a4bad111c88ea72e1f21f797e0304a310b98f64e3a4`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 26.5 KB (26545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc51145995ae8bcabb62147535b959fb87e3af15011929eac43ba635a69dcf12`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be55ca9c798cf41154d497fa34d74915d7d40f47b339f3648a34629789cd4b`  
		Last Modified: Wed, 15 May 2019 22:49:06 GMT  
		Size: 64.4 MB (64432958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309a6f05567569510d4ea8975537342dc870deebfe8f3854c6c4050e8e626c10`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36476a765ef4fdfc04d37734bae496a246ab28911178423bd28199b484e55288`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:fbe85b0ad2d0232ea66b338f9969e874d5802fe74f11831dd8d655ce76972a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99396986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495e87e3d26e15c5c8cf764d2c52256d9ad097b528745449f4da24a813c96694`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:54:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:55:10 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:55:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:55:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:55:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:56:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:56:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:56:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:56:24 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 16 May 2019 00:56:25 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Thu, 16 May 2019 00:56:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:57:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:57:22 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:57:23 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:57:29 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:57:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419368b43036eb3bde11667d927888f442623955c05a0928df6c8dd7c3a123f`  
		Last Modified: Thu, 16 May 2019 01:01:24 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05512e3bb8917253df6e3b9640e28a497d5df4e8957a943fd1059ff4176f94`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeafb352200408552e04d46c295632989937181ed66759ecafaf703d3edfc16`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 807.2 KB (807201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a44d3ba903fd272682e0c2e1506af7d49fefa063c3adc28e8173cdb2fe47ba`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605cca8bc800fffed812d44abe42b7f5a1e5f53e5af43e663184ed6f8806f7f0`  
		Last Modified: Thu, 16 May 2019 01:01:28 GMT  
		Size: 6.4 MB (6410046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b947216903c86ff940195bc642bb6332b6ab61815d87c06d8d667f43ed93dff7`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 26.5 KB (26548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d142341a39c61d0acf68e09e41fd2f9366c31d221a4a2f0074a99219bd2c109`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476b1c7d940b7c745a66c42c4681e590f8409abd3dcc893603a2cbe2d0d17f`  
		Last Modified: Thu, 16 May 2019 01:01:38 GMT  
		Size: 52.4 MB (52410388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1ce1b935c25eb01c4d88d7035c0930de09395667897b8e8e12a21352b3240a`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b75270f845c6e675b01f83b43a0f45f66e8477c5b5204baa361775167017afc`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:daabe3c497bda2214f9110995aefa2455f024ddf3c53b95fe4e45e2d5da2f633
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115007560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41d6f23ce29354578bffcb7c6de769950ae5127cda7831b5ad29ee5d5fef230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:47:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:47:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:36 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 22:47:37 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 22:47:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:48:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:48:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:48:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:48:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:48:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:48:24 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:48:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b125fab6934780c5576dd32dd8102bd6bb6710e6df8a712db932609fc5bb4a5e`  
		Last Modified: Wed, 15 May 2019 22:50:00 GMT  
		Size: 2.0 KB (1973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9181c88af34399e0d4086d5fdcc7664bf30271478836e9652e8773fe31f424b7`  
		Last Modified: Wed, 15 May 2019 22:50:00 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b538016673ea806cd6d50ea2837c6a19e597f1decaad17dfd1683ec5d1cdc9d9`  
		Last Modified: Wed, 15 May 2019 22:49:59 GMT  
		Size: 819.4 KB (819371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c18fb97e20b4f9de15a4f37d6eb526cdb690c82591fe0f85dd2ac0d186791f`  
		Last Modified: Wed, 15 May 2019 22:49:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990476f48b4c2ae9bc0a609797b1e02bd12125876f403f53c5ef11dce48f0619`  
		Last Modified: Wed, 15 May 2019 22:50:03 GMT  
		Size: 7.5 MB (7458333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90456dbd013a59357bdf017ad1e0d8e671ee2a5840cc2bdd4725f45999511748`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add3de391d1aaa48b666ed59cdb4148a0083a52a0ffd787b81c21a938cc3f1e`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5023b85cca543ab8f4a65a67425fdd0c7f52a251014f56fd04aea9e01b2ab0a`  
		Last Modified: Wed, 15 May 2019 22:50:17 GMT  
		Size: 62.8 MB (62771630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3a8d5028272a9473efa302d05c4e50aa0a5e32076bd36dc4491e5e67ebaa41`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c481c455038d3f2adf209f31c56f65d0ffd0ca0f522517c046ef7b61dba743b`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:1df209e0b0aaa559bd1998df1102cdd906d051bf4d96a80b2dfe36dc5fdb6a9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109676905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277d15b08afa5049df6778dea7799ba0d435a2624520e3db3a39237d56c54a32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:18:45 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:19:01 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:19:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:20:05 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:20:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:21:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:21:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:21:45 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 23:21:47 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 23:21:55 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:24:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:24:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:24:32 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:24:42 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc397332e932c93552bb00cf2518d602211ab0ac01b670e94fd120e2f88613b`  
		Last Modified: Wed, 15 May 2019 23:32:17 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa66fc2b94094ee2076f59321cc9bb278df22929fd817b8dc1064894914166`  
		Last Modified: Wed, 15 May 2019 23:32:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1a299c64a56befa7680c6c51a35181da915c582033e2380b72a0f00e44c085`  
		Last Modified: Wed, 15 May 2019 23:32:14 GMT  
		Size: 808.9 KB (808917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf1c6a6c4a07f2edcce7e49141d0a236e6ee642f4a60331773f10ac5666c40`  
		Last Modified: Wed, 15 May 2019 23:32:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d039c27b6e379f8eb1d75c0672c85c3083333c359c3b76a39b798b4a52f1aa1`  
		Last Modified: Wed, 15 May 2019 23:32:21 GMT  
		Size: 7.2 MB (7219237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d075b7e2af65d0bcdedc3683d9673a667a879c55959d203816d583e80ce5`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 26.5 KB (26548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c29888cc206bebb1c2a3cc2a01673f5a2abcda9e75dba1c35e8d61d758c6ada`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d0b1b44dfcdb9c69ecc7dff80c40407ca77196217949cd72dedd2e070718a1`  
		Last Modified: Wed, 15 May 2019 23:32:40 GMT  
		Size: 55.7 MB (55678980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d78d76b5c066bc82fdb4953966e1ab8db78a5e1c1578db4ca85fb99db0b239d`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fd9fa72f580f9d32ecc14db3a01d8b5a8c994e4d19510057a05575c887611b`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:8beadfe2a5ae80c95ef8a8bd1d75b0c2fc84e18b7f22c6532a646cfa932b2ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:0cbbb4fd664ae995d39c192b4dfc8c6ae15585556f59d041b6cdee18a9fad9fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116406387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bde56970c6baf74059e7c713f812a6c26d872bed39503330dfeffff0658d5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:45:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:45:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:45:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:45:33 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:45:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:45:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:45:53 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 22:45:53 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 22:45:54 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:46:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:46:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:46:35 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:46:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:46:36 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:46:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000c92a2d2d6812f58ad5a60718db8724c8767d40f8569cc96a2c7566d90c75b`  
		Last Modified: Wed, 15 May 2019 22:48:55 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42857d2f5cd35d69255e11a6e3d88ba0249b61e74927c24545dfbb1b702cfb`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d773356d26065e5caded0b53dc37db1a299c440eb0231855a2e6b0040d09ac0f`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 840.3 KB (840319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0de124a7e1d82222dd954bfbc0daea6e805d27cbbe859e5fd722c8617656994`  
		Last Modified: Wed, 15 May 2019 22:48:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed402d23187f1f15c0845a184def96c9f495ad63c960dd8a957179c23f991e1b`  
		Last Modified: Wed, 15 May 2019 22:48:56 GMT  
		Size: 7.3 MB (7331373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c058476c602608675cf65a4bad111c88ea72e1f21f797e0304a310b98f64e3a4`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 26.5 KB (26545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc51145995ae8bcabb62147535b959fb87e3af15011929eac43ba635a69dcf12`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be55ca9c798cf41154d497fa34d74915d7d40f47b339f3648a34629789cd4b`  
		Last Modified: Wed, 15 May 2019 22:49:06 GMT  
		Size: 64.4 MB (64432958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309a6f05567569510d4ea8975537342dc870deebfe8f3854c6c4050e8e626c10`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36476a765ef4fdfc04d37734bae496a246ab28911178423bd28199b484e55288`  
		Last Modified: Wed, 15 May 2019 22:48:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:fbe85b0ad2d0232ea66b338f9969e874d5802fe74f11831dd8d655ce76972a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99396986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495e87e3d26e15c5c8cf764d2c52256d9ad097b528745449f4da24a813c96694`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:54:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:55:10 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:55:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:55:37 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:55:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:56:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:56:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:56:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:56:24 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 16 May 2019 00:56:25 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Thu, 16 May 2019 00:56:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:57:20 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:57:22 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:57:23 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:57:29 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:57:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419368b43036eb3bde11667d927888f442623955c05a0928df6c8dd7c3a123f`  
		Last Modified: Thu, 16 May 2019 01:01:24 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05512e3bb8917253df6e3b9640e28a497d5df4e8957a943fd1059ff4176f94`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeafb352200408552e04d46c295632989937181ed66759ecafaf703d3edfc16`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 807.2 KB (807201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a44d3ba903fd272682e0c2e1506af7d49fefa063c3adc28e8173cdb2fe47ba`  
		Last Modified: Thu, 16 May 2019 01:01:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605cca8bc800fffed812d44abe42b7f5a1e5f53e5af43e663184ed6f8806f7f0`  
		Last Modified: Thu, 16 May 2019 01:01:28 GMT  
		Size: 6.4 MB (6410046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b947216903c86ff940195bc642bb6332b6ab61815d87c06d8d667f43ed93dff7`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 26.5 KB (26548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d142341a39c61d0acf68e09e41fd2f9366c31d221a4a2f0074a99219bd2c109`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476b1c7d940b7c745a66c42c4681e590f8409abd3dcc893603a2cbe2d0d17f`  
		Last Modified: Thu, 16 May 2019 01:01:38 GMT  
		Size: 52.4 MB (52410388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1ce1b935c25eb01c4d88d7035c0930de09395667897b8e8e12a21352b3240a`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b75270f845c6e675b01f83b43a0f45f66e8477c5b5204baa361775167017afc`  
		Last Modified: Thu, 16 May 2019 01:01:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:daabe3c497bda2214f9110995aefa2455f024ddf3c53b95fe4e45e2d5da2f633
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115007560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41d6f23ce29354578bffcb7c6de769950ae5127cda7831b5ad29ee5d5fef230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:47:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:47:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:36 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 22:47:37 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 22:47:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:48:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:48:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:48:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:48:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:48:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:48:24 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:48:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b125fab6934780c5576dd32dd8102bd6bb6710e6df8a712db932609fc5bb4a5e`  
		Last Modified: Wed, 15 May 2019 22:50:00 GMT  
		Size: 2.0 KB (1973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9181c88af34399e0d4086d5fdcc7664bf30271478836e9652e8773fe31f424b7`  
		Last Modified: Wed, 15 May 2019 22:50:00 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b538016673ea806cd6d50ea2837c6a19e597f1decaad17dfd1683ec5d1cdc9d9`  
		Last Modified: Wed, 15 May 2019 22:49:59 GMT  
		Size: 819.4 KB (819371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c18fb97e20b4f9de15a4f37d6eb526cdb690c82591fe0f85dd2ac0d186791f`  
		Last Modified: Wed, 15 May 2019 22:49:59 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990476f48b4c2ae9bc0a609797b1e02bd12125876f403f53c5ef11dce48f0619`  
		Last Modified: Wed, 15 May 2019 22:50:03 GMT  
		Size: 7.5 MB (7458333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90456dbd013a59357bdf017ad1e0d8e671ee2a5840cc2bdd4725f45999511748`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add3de391d1aaa48b666ed59cdb4148a0083a52a0ffd787b81c21a938cc3f1e`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5023b85cca543ab8f4a65a67425fdd0c7f52a251014f56fd04aea9e01b2ab0a`  
		Last Modified: Wed, 15 May 2019 22:50:17 GMT  
		Size: 62.8 MB (62771630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3a8d5028272a9473efa302d05c4e50aa0a5e32076bd36dc4491e5e67ebaa41`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c481c455038d3f2adf209f31c56f65d0ffd0ca0f522517c046ef7b61dba743b`  
		Last Modified: Wed, 15 May 2019 22:49:58 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:1df209e0b0aaa559bd1998df1102cdd906d051bf4d96a80b2dfe36dc5fdb6a9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109676905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277d15b08afa5049df6778dea7799ba0d435a2624520e3db3a39237d56c54a32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:18:45 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:19:01 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:19:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:20:05 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:20:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:21:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:21:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:21:45 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 15 May 2019 23:21:47 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 15 May 2019 23:21:55 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:24:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:24:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:24:32 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:24:42 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc397332e932c93552bb00cf2518d602211ab0ac01b670e94fd120e2f88613b`  
		Last Modified: Wed, 15 May 2019 23:32:17 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa66fc2b94094ee2076f59321cc9bb278df22929fd817b8dc1064894914166`  
		Last Modified: Wed, 15 May 2019 23:32:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1a299c64a56befa7680c6c51a35181da915c582033e2380b72a0f00e44c085`  
		Last Modified: Wed, 15 May 2019 23:32:14 GMT  
		Size: 808.9 KB (808917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf1c6a6c4a07f2edcce7e49141d0a236e6ee642f4a60331773f10ac5666c40`  
		Last Modified: Wed, 15 May 2019 23:32:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d039c27b6e379f8eb1d75c0672c85c3083333c359c3b76a39b798b4a52f1aa1`  
		Last Modified: Wed, 15 May 2019 23:32:21 GMT  
		Size: 7.2 MB (7219237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d075b7e2af65d0bcdedc3683d9673a667a879c55959d203816d583e80ce5`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 26.5 KB (26548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c29888cc206bebb1c2a3cc2a01673f5a2abcda9e75dba1c35e8d61d758c6ada`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d0b1b44dfcdb9c69ecc7dff80c40407ca77196217949cd72dedd2e070718a1`  
		Last Modified: Wed, 15 May 2019 23:32:40 GMT  
		Size: 55.7 MB (55678980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d78d76b5c066bc82fdb4953966e1ab8db78a5e1c1578db4ca85fb99db0b239d`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fd9fa72f580f9d32ecc14db3a01d8b5a8c994e4d19510057a05575c887611b`  
		Last Modified: Wed, 15 May 2019 23:32:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:9252f0a158f37b95bf956a32af6c177b61c33c6533865b6dff5e5d5853c172a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:e3b68000f708f71c85b10d5cebf678e43977c4a774911e378cd5bcdd7b561f3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115350173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2895561b8213e5678ca0c8886b05fc5ddb644e86fb2ce802f7e69f3c513f8fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:44:23 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 15 May 2019 22:44:24 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Wed, 15 May 2019 22:44:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:45:05 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:45:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:45:06 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:45:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:45:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:45:07 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:45:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdef9df1088c791f6ce9b3b970a3409d4c9761def46bd88152ac07b17f30526`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae9b34c9b9e65cc84d8dc8eb827e47000ff4757e8b8c3b68a461ffee7f93699`  
		Last Modified: Wed, 15 May 2019 22:48:48 GMT  
		Size: 77.8 MB (77833095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79df399e6fe41b614321fa655d008ea2d4f50052ec04d129055f8267f090162a`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f5dba82e0beac163986768272ee6fa8a7ba3df3538b84f8a3cbb927def19cf`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:af96339ba8ac194c83bc8d8216bfece6df6cf1da0fc6f2bc4721237baa970dc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107970038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6a2c923df6eaaed3d01bbc360e6eab6ec3f780643bee26702885228c8b35a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:53:22 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 16 May 2019 00:53:22 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Thu, 16 May 2019 00:53:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:54:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:54:25 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:54:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:54:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:54:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:54:33 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:54:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858db390d50f04d81710d411cbe4fef9b310f9a903c2c5a63220a108c0757c8c`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4faec38254022af8649999a981d38e763b2c8c304a77b8affa9c7e3181f5fd07`  
		Last Modified: Thu, 16 May 2019 01:01:07 GMT  
		Size: 74.1 MB (74136113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4edcbdf846b9ee302912d677a646d3e0e0175a9fb2a165f59bf645d9a96b10`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02483cea63e3ed87faaa9563d1f00d9cac824d2685ebe7e19085654d60074aa0`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:fee78fb0dc4d22a7fb8358777565cbf05fd5993149c52d574ffa76d6b0bd5342
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120245970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536b04e05954111dd88baa8402cbed3bb5e6a65238c47c42e73c6fa9391e024d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:15:25 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 15 May 2019 23:15:29 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Wed, 15 May 2019 23:15:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:18:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:18:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:18:06 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:18:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:18:22 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:18:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49353db82131055f8f1878f20c73e52b24241bf201084a82307533391fd4437d`  
		Last Modified: Wed, 15 May 2019 23:31:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e1d9396287fc5c619328522d4097cba8f37a30ad434feff5276c4fc0f3d2eb`  
		Last Modified: Wed, 15 May 2019 23:31:52 GMT  
		Size: 78.4 MB (78352763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7448139f6878d543db47e807fedff9bf58b2e7e492a1db662835c0f6ffc535`  
		Last Modified: Wed, 15 May 2019 23:31:19 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e65b47c29229e9ee0823219b057fc843cfb175264d8a27460c47047d94945`  
		Last Modified: Wed, 15 May 2019 23:31:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.40`

```console
$ docker pull mariadb@sha256:9252f0a158f37b95bf956a32af6c177b61c33c6533865b6dff5e5d5853c172a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.40` - linux; amd64

```console
$ docker pull mariadb@sha256:e3b68000f708f71c85b10d5cebf678e43977c4a774911e378cd5bcdd7b561f3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115350173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2895561b8213e5678ca0c8886b05fc5ddb644e86fb2ce802f7e69f3c513f8fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:44:23 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 15 May 2019 22:44:24 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Wed, 15 May 2019 22:44:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:45:05 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:45:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:45:06 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:45:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:45:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:45:07 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:45:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdef9df1088c791f6ce9b3b970a3409d4c9761def46bd88152ac07b17f30526`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae9b34c9b9e65cc84d8dc8eb827e47000ff4757e8b8c3b68a461ffee7f93699`  
		Last Modified: Wed, 15 May 2019 22:48:48 GMT  
		Size: 77.8 MB (77833095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79df399e6fe41b614321fa655d008ea2d4f50052ec04d129055f8267f090162a`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f5dba82e0beac163986768272ee6fa8a7ba3df3538b84f8a3cbb927def19cf`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.40` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:af96339ba8ac194c83bc8d8216bfece6df6cf1da0fc6f2bc4721237baa970dc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107970038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6a2c923df6eaaed3d01bbc360e6eab6ec3f780643bee26702885228c8b35a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:53:22 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 16 May 2019 00:53:22 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Thu, 16 May 2019 00:53:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:54:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:54:25 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:54:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:54:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:54:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:54:33 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:54:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858db390d50f04d81710d411cbe4fef9b310f9a903c2c5a63220a108c0757c8c`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4faec38254022af8649999a981d38e763b2c8c304a77b8affa9c7e3181f5fd07`  
		Last Modified: Thu, 16 May 2019 01:01:07 GMT  
		Size: 74.1 MB (74136113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4edcbdf846b9ee302912d677a646d3e0e0175a9fb2a165f59bf645d9a96b10`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02483cea63e3ed87faaa9563d1f00d9cac824d2685ebe7e19085654d60074aa0`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.40` - linux; ppc64le

```console
$ docker pull mariadb@sha256:fee78fb0dc4d22a7fb8358777565cbf05fd5993149c52d574ffa76d6b0bd5342
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120245970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536b04e05954111dd88baa8402cbed3bb5e6a65238c47c42e73c6fa9391e024d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:15:25 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 15 May 2019 23:15:29 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Wed, 15 May 2019 23:15:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:18:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:18:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:18:06 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:18:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:18:22 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:18:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49353db82131055f8f1878f20c73e52b24241bf201084a82307533391fd4437d`  
		Last Modified: Wed, 15 May 2019 23:31:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e1d9396287fc5c619328522d4097cba8f37a30ad434feff5276c4fc0f3d2eb`  
		Last Modified: Wed, 15 May 2019 23:31:52 GMT  
		Size: 78.4 MB (78352763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7448139f6878d543db47e807fedff9bf58b2e7e492a1db662835c0f6ffc535`  
		Last Modified: Wed, 15 May 2019 23:31:19 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e65b47c29229e9ee0823219b057fc843cfb175264d8a27460c47047d94945`  
		Last Modified: Wed, 15 May 2019 23:31:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.40-bionic`

```console
$ docker pull mariadb@sha256:9252f0a158f37b95bf956a32af6c177b61c33c6533865b6dff5e5d5853c172a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.40-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:e3b68000f708f71c85b10d5cebf678e43977c4a774911e378cd5bcdd7b561f3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115350173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2895561b8213e5678ca0c8886b05fc5ddb644e86fb2ce802f7e69f3c513f8fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:44:23 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 15 May 2019 22:44:24 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Wed, 15 May 2019 22:44:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:45:05 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:45:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:45:06 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:45:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:45:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:45:07 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:45:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdef9df1088c791f6ce9b3b970a3409d4c9761def46bd88152ac07b17f30526`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae9b34c9b9e65cc84d8dc8eb827e47000ff4757e8b8c3b68a461ffee7f93699`  
		Last Modified: Wed, 15 May 2019 22:48:48 GMT  
		Size: 77.8 MB (77833095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79df399e6fe41b614321fa655d008ea2d4f50052ec04d129055f8267f090162a`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f5dba82e0beac163986768272ee6fa8a7ba3df3538b84f8a3cbb927def19cf`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.40-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:af96339ba8ac194c83bc8d8216bfece6df6cf1da0fc6f2bc4721237baa970dc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107970038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6a2c923df6eaaed3d01bbc360e6eab6ec3f780643bee26702885228c8b35a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:53:22 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 16 May 2019 00:53:22 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Thu, 16 May 2019 00:53:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:54:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:54:25 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:54:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:54:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:54:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:54:33 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:54:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858db390d50f04d81710d411cbe4fef9b310f9a903c2c5a63220a108c0757c8c`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4faec38254022af8649999a981d38e763b2c8c304a77b8affa9c7e3181f5fd07`  
		Last Modified: Thu, 16 May 2019 01:01:07 GMT  
		Size: 74.1 MB (74136113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4edcbdf846b9ee302912d677a646d3e0e0175a9fb2a165f59bf645d9a96b10`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02483cea63e3ed87faaa9563d1f00d9cac824d2685ebe7e19085654d60074aa0`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.40-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:fee78fb0dc4d22a7fb8358777565cbf05fd5993149c52d574ffa76d6b0bd5342
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120245970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536b04e05954111dd88baa8402cbed3bb5e6a65238c47c42e73c6fa9391e024d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:15:25 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 15 May 2019 23:15:29 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Wed, 15 May 2019 23:15:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:18:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:18:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:18:06 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:18:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:18:22 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:18:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49353db82131055f8f1878f20c73e52b24241bf201084a82307533391fd4437d`  
		Last Modified: Wed, 15 May 2019 23:31:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e1d9396287fc5c619328522d4097cba8f37a30ad434feff5276c4fc0f3d2eb`  
		Last Modified: Wed, 15 May 2019 23:31:52 GMT  
		Size: 78.4 MB (78352763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7448139f6878d543db47e807fedff9bf58b2e7e492a1db662835c0f6ffc535`  
		Last Modified: Wed, 15 May 2019 23:31:19 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e65b47c29229e9ee0823219b057fc843cfb175264d8a27460c47047d94945`  
		Last Modified: Wed, 15 May 2019 23:31:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:9252f0a158f37b95bf956a32af6c177b61c33c6533865b6dff5e5d5853c172a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:e3b68000f708f71c85b10d5cebf678e43977c4a774911e378cd5bcdd7b561f3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115350173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2895561b8213e5678ca0c8886b05fc5ddb644e86fb2ce802f7e69f3c513f8fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:44:23 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 15 May 2019 22:44:24 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Wed, 15 May 2019 22:44:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:45:05 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:45:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:45:06 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:45:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:45:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:45:07 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:45:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdef9df1088c791f6ce9b3b970a3409d4c9761def46bd88152ac07b17f30526`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae9b34c9b9e65cc84d8dc8eb827e47000ff4757e8b8c3b68a461ffee7f93699`  
		Last Modified: Wed, 15 May 2019 22:48:48 GMT  
		Size: 77.8 MB (77833095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79df399e6fe41b614321fa655d008ea2d4f50052ec04d129055f8267f090162a`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f5dba82e0beac163986768272ee6fa8a7ba3df3538b84f8a3cbb927def19cf`  
		Last Modified: Wed, 15 May 2019 22:48:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:af96339ba8ac194c83bc8d8216bfece6df6cf1da0fc6f2bc4721237baa970dc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107970038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6a2c923df6eaaed3d01bbc360e6eab6ec3f780643bee26702885228c8b35a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:53:22 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 16 May 2019 00:53:22 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Thu, 16 May 2019 00:53:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:54:24 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:54:25 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:54:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:54:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:54:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:54:33 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:54:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858db390d50f04d81710d411cbe4fef9b310f9a903c2c5a63220a108c0757c8c`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4faec38254022af8649999a981d38e763b2c8c304a77b8affa9c7e3181f5fd07`  
		Last Modified: Thu, 16 May 2019 01:01:07 GMT  
		Size: 74.1 MB (74136113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4edcbdf846b9ee302912d677a646d3e0e0175a9fb2a165f59bf645d9a96b10`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02483cea63e3ed87faaa9563d1f00d9cac824d2685ebe7e19085654d60074aa0`  
		Last Modified: Thu, 16 May 2019 01:00:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:fee78fb0dc4d22a7fb8358777565cbf05fd5993149c52d574ffa76d6b0bd5342
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120245970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536b04e05954111dd88baa8402cbed3bb5e6a65238c47c42e73c6fa9391e024d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:15:25 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 15 May 2019 23:15:29 GMT
ENV MARIADB_VERSION=1:10.1.40+maria-1~bionic
# Wed, 15 May 2019 23:15:34 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:18:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:18:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:18:06 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:18:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:18:22 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:18:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49353db82131055f8f1878f20c73e52b24241bf201084a82307533391fd4437d`  
		Last Modified: Wed, 15 May 2019 23:31:18 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e1d9396287fc5c619328522d4097cba8f37a30ad434feff5276c4fc0f3d2eb`  
		Last Modified: Wed, 15 May 2019 23:31:52 GMT  
		Size: 78.4 MB (78352763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7448139f6878d543db47e807fedff9bf58b2e7e492a1db662835c0f6ffc535`  
		Last Modified: Wed, 15 May 2019 23:31:19 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e65b47c29229e9ee0823219b057fc843cfb175264d8a27460c47047d94945`  
		Last Modified: Wed, 15 May 2019 23:31:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:03cdca3a1763f80279bfa07e912192bebe01cc9cb4fd25409e6d0ba37d099115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:e0f76b36d5fcf43db73743e3032198e4788e57f90be29378ee58601ffec693db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110885449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453efb22c1c9c9c64527b38e74606730f5c5d60bc4f47d3d980eb4714c47ae45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:45 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 15 May 2019 22:43:45 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Wed, 15 May 2019 22:43:46 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:44:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:44:15 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:44:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:44:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:44:16 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9def8b2b864e2ead8dbe49de8be167ca6a5a236076f7f1b10e58ed0990cf8c18`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee94a23592bec0a5149bb7e4d77cc2dd6ec1a0cb35b72a2a7b4bc702391c4f92`  
		Last Modified: Wed, 15 May 2019 22:48:26 GMT  
		Size: 73.4 MB (73368373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a4f67b8689d0f2f67ee9bf94ea38e3a799d85187503a452e51edd5b5ac6d7b`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4327972a5e68117f25721ccac21d4478619ecfef333a677cbf92bcef0c213`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:320120ebd928ab9044e1f8919ce6fa83eae4395c1a9aa310053abfb0b495733c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106130443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada19713671abfdb0b94152a4b26dc7176aa14f086fadb231c58f53a5841020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:52:27 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 May 2019 00:52:27 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Thu, 16 May 2019 00:52:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:53:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:53:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:53:08 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:53:10 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:53:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62c90b5f80c56a1185cda285033d7ce6cf62b1fa532999b835754e914b31b1`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd2dcc466b4e7f34dc655cf8fa54ecce66c4a0cb9893d1e79a0b9e96a0c12b1`  
		Last Modified: Thu, 16 May 2019 01:00:22 GMT  
		Size: 72.3 MB (72296520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e31e73860d8051bc34cfc4b7fcd9b473c4fd3d37a0dfb3c01a0b45035425c`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2c190a76723c0d552fe06b57a8b94cd23047c328e81bd2caeebf234e3db7e3`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8040437d2a9fdf852022561b3f15a358d5bd35f058a4b409be2962a630f9fd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118122823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a244615ed821b2d587dd6cca630e5c54399ea7d158f5779f403955ffb1552e34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:30 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 15 May 2019 23:12:34 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Wed, 15 May 2019 23:12:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:14:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:15:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:15:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:15:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:15:16 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:15:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdc5c9f2ccfdc5393fd0611ed15a7bf5d8384a1262580e58cfdc8c1a3dbe309`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f7a04bb184974383a501813a7d4fff725f368f9ca8f1d6aad440d480605b88`  
		Last Modified: Wed, 15 May 2019 23:31:00 GMT  
		Size: 76.2 MB (76229615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9d8fcf11c62c7fb0490c6ee7c670a786fba7d38873ffa3b0f471fb955a8c2f`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eaba27abac3e607b87b2c5a1620b6c2368241b09bb02228c471cc5f268bfa5c`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.24`

```console
$ docker pull mariadb@sha256:03cdca3a1763f80279bfa07e912192bebe01cc9cb4fd25409e6d0ba37d099115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.24` - linux; amd64

```console
$ docker pull mariadb@sha256:e0f76b36d5fcf43db73743e3032198e4788e57f90be29378ee58601ffec693db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110885449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453efb22c1c9c9c64527b38e74606730f5c5d60bc4f47d3d980eb4714c47ae45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:45 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 15 May 2019 22:43:45 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Wed, 15 May 2019 22:43:46 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:44:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:44:15 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:44:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:44:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:44:16 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9def8b2b864e2ead8dbe49de8be167ca6a5a236076f7f1b10e58ed0990cf8c18`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee94a23592bec0a5149bb7e4d77cc2dd6ec1a0cb35b72a2a7b4bc702391c4f92`  
		Last Modified: Wed, 15 May 2019 22:48:26 GMT  
		Size: 73.4 MB (73368373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a4f67b8689d0f2f67ee9bf94ea38e3a799d85187503a452e51edd5b5ac6d7b`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4327972a5e68117f25721ccac21d4478619ecfef333a677cbf92bcef0c213`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.24` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:320120ebd928ab9044e1f8919ce6fa83eae4395c1a9aa310053abfb0b495733c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106130443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada19713671abfdb0b94152a4b26dc7176aa14f086fadb231c58f53a5841020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:52:27 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 May 2019 00:52:27 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Thu, 16 May 2019 00:52:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:53:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:53:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:53:08 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:53:10 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:53:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62c90b5f80c56a1185cda285033d7ce6cf62b1fa532999b835754e914b31b1`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd2dcc466b4e7f34dc655cf8fa54ecce66c4a0cb9893d1e79a0b9e96a0c12b1`  
		Last Modified: Thu, 16 May 2019 01:00:22 GMT  
		Size: 72.3 MB (72296520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e31e73860d8051bc34cfc4b7fcd9b473c4fd3d37a0dfb3c01a0b45035425c`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2c190a76723c0d552fe06b57a8b94cd23047c328e81bd2caeebf234e3db7e3`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.24` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8040437d2a9fdf852022561b3f15a358d5bd35f058a4b409be2962a630f9fd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118122823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a244615ed821b2d587dd6cca630e5c54399ea7d158f5779f403955ffb1552e34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:30 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 15 May 2019 23:12:34 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Wed, 15 May 2019 23:12:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:14:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:15:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:15:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:15:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:15:16 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:15:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdc5c9f2ccfdc5393fd0611ed15a7bf5d8384a1262580e58cfdc8c1a3dbe309`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f7a04bb184974383a501813a7d4fff725f368f9ca8f1d6aad440d480605b88`  
		Last Modified: Wed, 15 May 2019 23:31:00 GMT  
		Size: 76.2 MB (76229615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9d8fcf11c62c7fb0490c6ee7c670a786fba7d38873ffa3b0f471fb955a8c2f`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eaba27abac3e607b87b2c5a1620b6c2368241b09bb02228c471cc5f268bfa5c`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.24-bionic`

```console
$ docker pull mariadb@sha256:03cdca3a1763f80279bfa07e912192bebe01cc9cb4fd25409e6d0ba37d099115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.24-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:e0f76b36d5fcf43db73743e3032198e4788e57f90be29378ee58601ffec693db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110885449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453efb22c1c9c9c64527b38e74606730f5c5d60bc4f47d3d980eb4714c47ae45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:45 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 15 May 2019 22:43:45 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Wed, 15 May 2019 22:43:46 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:44:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:44:15 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:44:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:44:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:44:16 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9def8b2b864e2ead8dbe49de8be167ca6a5a236076f7f1b10e58ed0990cf8c18`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee94a23592bec0a5149bb7e4d77cc2dd6ec1a0cb35b72a2a7b4bc702391c4f92`  
		Last Modified: Wed, 15 May 2019 22:48:26 GMT  
		Size: 73.4 MB (73368373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a4f67b8689d0f2f67ee9bf94ea38e3a799d85187503a452e51edd5b5ac6d7b`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4327972a5e68117f25721ccac21d4478619ecfef333a677cbf92bcef0c213`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.24-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:320120ebd928ab9044e1f8919ce6fa83eae4395c1a9aa310053abfb0b495733c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106130443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada19713671abfdb0b94152a4b26dc7176aa14f086fadb231c58f53a5841020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:52:27 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 May 2019 00:52:27 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Thu, 16 May 2019 00:52:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:53:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:53:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:53:08 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:53:10 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:53:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62c90b5f80c56a1185cda285033d7ce6cf62b1fa532999b835754e914b31b1`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd2dcc466b4e7f34dc655cf8fa54ecce66c4a0cb9893d1e79a0b9e96a0c12b1`  
		Last Modified: Thu, 16 May 2019 01:00:22 GMT  
		Size: 72.3 MB (72296520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e31e73860d8051bc34cfc4b7fcd9b473c4fd3d37a0dfb3c01a0b45035425c`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2c190a76723c0d552fe06b57a8b94cd23047c328e81bd2caeebf234e3db7e3`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.24-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8040437d2a9fdf852022561b3f15a358d5bd35f058a4b409be2962a630f9fd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118122823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a244615ed821b2d587dd6cca630e5c54399ea7d158f5779f403955ffb1552e34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:30 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 15 May 2019 23:12:34 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Wed, 15 May 2019 23:12:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:14:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:15:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:15:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:15:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:15:16 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:15:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdc5c9f2ccfdc5393fd0611ed15a7bf5d8384a1262580e58cfdc8c1a3dbe309`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f7a04bb184974383a501813a7d4fff725f368f9ca8f1d6aad440d480605b88`  
		Last Modified: Wed, 15 May 2019 23:31:00 GMT  
		Size: 76.2 MB (76229615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9d8fcf11c62c7fb0490c6ee7c670a786fba7d38873ffa3b0f471fb955a8c2f`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eaba27abac3e607b87b2c5a1620b6c2368241b09bb02228c471cc5f268bfa5c`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:03cdca3a1763f80279bfa07e912192bebe01cc9cb4fd25409e6d0ba37d099115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:e0f76b36d5fcf43db73743e3032198e4788e57f90be29378ee58601ffec693db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110885449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453efb22c1c9c9c64527b38e74606730f5c5d60bc4f47d3d980eb4714c47ae45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:45 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 15 May 2019 22:43:45 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Wed, 15 May 2019 22:43:46 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:44:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:44:15 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:44:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:44:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:44:16 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9def8b2b864e2ead8dbe49de8be167ca6a5a236076f7f1b10e58ed0990cf8c18`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee94a23592bec0a5149bb7e4d77cc2dd6ec1a0cb35b72a2a7b4bc702391c4f92`  
		Last Modified: Wed, 15 May 2019 22:48:26 GMT  
		Size: 73.4 MB (73368373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a4f67b8689d0f2f67ee9bf94ea38e3a799d85187503a452e51edd5b5ac6d7b`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4327972a5e68117f25721ccac21d4478619ecfef333a677cbf92bcef0c213`  
		Last Modified: Wed, 15 May 2019 22:48:12 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:320120ebd928ab9044e1f8919ce6fa83eae4395c1a9aa310053abfb0b495733c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106130443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada19713671abfdb0b94152a4b26dc7176aa14f086fadb231c58f53a5841020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:52:27 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 May 2019 00:52:27 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Thu, 16 May 2019 00:52:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:53:06 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:53:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:53:08 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:53:10 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:53:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62c90b5f80c56a1185cda285033d7ce6cf62b1fa532999b835754e914b31b1`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd2dcc466b4e7f34dc655cf8fa54ecce66c4a0cb9893d1e79a0b9e96a0c12b1`  
		Last Modified: Thu, 16 May 2019 01:00:22 GMT  
		Size: 72.3 MB (72296520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e31e73860d8051bc34cfc4b7fcd9b473c4fd3d37a0dfb3c01a0b45035425c`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2c190a76723c0d552fe06b57a8b94cd23047c328e81bd2caeebf234e3db7e3`  
		Last Modified: Thu, 16 May 2019 00:59:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8040437d2a9fdf852022561b3f15a358d5bd35f058a4b409be2962a630f9fd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118122823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a244615ed821b2d587dd6cca630e5c54399ea7d158f5779f403955ffb1552e34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:12:30 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 15 May 2019 23:12:34 GMT
ENV MARIADB_VERSION=1:10.2.24+maria~bionic
# Wed, 15 May 2019 23:12:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:14:56 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:15:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:15:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:15:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:15:16 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:15:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdc5c9f2ccfdc5393fd0611ed15a7bf5d8384a1262580e58cfdc8c1a3dbe309`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f7a04bb184974383a501813a7d4fff725f368f9ca8f1d6aad440d480605b88`  
		Last Modified: Wed, 15 May 2019 23:31:00 GMT  
		Size: 76.2 MB (76229615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9d8fcf11c62c7fb0490c6ee7c670a786fba7d38873ffa3b0f471fb955a8c2f`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eaba27abac3e607b87b2c5a1620b6c2368241b09bb02228c471cc5f268bfa5c`  
		Last Modified: Wed, 15 May 2019 23:30:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:db6e7bda67ea88efb00ba4ad82cb72dfee8938935914ae0948f6af523d398ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:83382f69f154c6d09a6bf05622513ad37906cad52da74d4d8c799d2bc3b7f913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bb20373d81e6601750192197931de1496fed565dfd4a35ba2ebd050de5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:23 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:46:58 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:46:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:47:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:47:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:47:44 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:45 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:47:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9104943e23ec4f42cc42d4b1e5c51a9b80d86791854fde64e1ade9fb468e17f9`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae510462589d8cdc44d2c6a3b1267f0e3874efc2916f6ed6cef9f29c25c8bb67`  
		Last Modified: Thu, 16 May 2019 00:48:46 GMT  
		Size: 74.3 MB (74336931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23646ae61e9341bbbd0601b48b1a58d2198c7069c7d46554d7ecdbf51b419a`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c301b916a4e0d381e7c3b3f6e80d04d0afec7a94d44a986bc1d43a645cb74cc`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:34a7ee3f52becbd1b8947f16c02b52c6e9f3dfbd101d0953c1df7421f188c5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107083267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f256951026db34f1432226bfacc9f3f34afa1497e862d900413d3258a64fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:51:33 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:51:34 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:51:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:52:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:52:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:52:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:18 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:52:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac1d85e46e6a58047ce8cafb0e9cd8087bede9b95ce1e5127ff6603e28e79`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693148785c5e0724d9368261d10ca53d56137766aa0ed33b46c19db837e4bdb9`  
		Last Modified: Thu, 16 May 2019 00:59:27 GMT  
		Size: 73.2 MB (73249349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c668e859e1269ecf88a6dabfc552029baa5e0ad77d537305eae5080653530d5`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf4472df7bc3ef428b1ebf7fa8f63403037b1ddb1be421926e8607a85509fff`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2f4e89d2af187885e7b1359cf0bf0337ea0114fbb31fb7052b062c6732f505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119153967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4dbdfd72e358e62aa30ede0490b8848da32c6e8434ed63d4eb10575bf9a78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:14 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:41:30 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:41:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:43:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:43:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:43:25 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:43:40 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd491ba73457f25531c69fc10f25207fb1ac7f5901bea97c61727df1bdd857c`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d9a6121c80b4ab5c8c776d3e7c22f95b2f36e93b0a0a97dd6deb1251014a2`  
		Last Modified: Thu, 16 May 2019 00:45:02 GMT  
		Size: 77.3 MB (77260760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590ae0a85f0a8ebe0e4777564149a083c6bd172a66e92a45e9178db59f79cfa7`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6e2a60ee063f990c9dff12c518a91a419161774fb86e09f9d3908b44df0cbb`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.15`

```console
$ docker pull mariadb@sha256:db6e7bda67ea88efb00ba4ad82cb72dfee8938935914ae0948f6af523d398ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.15` - linux; amd64

```console
$ docker pull mariadb@sha256:83382f69f154c6d09a6bf05622513ad37906cad52da74d4d8c799d2bc3b7f913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bb20373d81e6601750192197931de1496fed565dfd4a35ba2ebd050de5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:23 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:46:58 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:46:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:47:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:47:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:47:44 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:45 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:47:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9104943e23ec4f42cc42d4b1e5c51a9b80d86791854fde64e1ade9fb468e17f9`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae510462589d8cdc44d2c6a3b1267f0e3874efc2916f6ed6cef9f29c25c8bb67`  
		Last Modified: Thu, 16 May 2019 00:48:46 GMT  
		Size: 74.3 MB (74336931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23646ae61e9341bbbd0601b48b1a58d2198c7069c7d46554d7ecdbf51b419a`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c301b916a4e0d381e7c3b3f6e80d04d0afec7a94d44a986bc1d43a645cb74cc`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.15` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:34a7ee3f52becbd1b8947f16c02b52c6e9f3dfbd101d0953c1df7421f188c5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107083267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f256951026db34f1432226bfacc9f3f34afa1497e862d900413d3258a64fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:51:33 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:51:34 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:51:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:52:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:52:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:52:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:18 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:52:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac1d85e46e6a58047ce8cafb0e9cd8087bede9b95ce1e5127ff6603e28e79`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693148785c5e0724d9368261d10ca53d56137766aa0ed33b46c19db837e4bdb9`  
		Last Modified: Thu, 16 May 2019 00:59:27 GMT  
		Size: 73.2 MB (73249349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c668e859e1269ecf88a6dabfc552029baa5e0ad77d537305eae5080653530d5`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf4472df7bc3ef428b1ebf7fa8f63403037b1ddb1be421926e8607a85509fff`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.15` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2f4e89d2af187885e7b1359cf0bf0337ea0114fbb31fb7052b062c6732f505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119153967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4dbdfd72e358e62aa30ede0490b8848da32c6e8434ed63d4eb10575bf9a78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:14 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:41:30 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:41:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:43:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:43:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:43:25 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:43:40 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd491ba73457f25531c69fc10f25207fb1ac7f5901bea97c61727df1bdd857c`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d9a6121c80b4ab5c8c776d3e7c22f95b2f36e93b0a0a97dd6deb1251014a2`  
		Last Modified: Thu, 16 May 2019 00:45:02 GMT  
		Size: 77.3 MB (77260760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590ae0a85f0a8ebe0e4777564149a083c6bd172a66e92a45e9178db59f79cfa7`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6e2a60ee063f990c9dff12c518a91a419161774fb86e09f9d3908b44df0cbb`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.15-bionic`

```console
$ docker pull mariadb@sha256:db6e7bda67ea88efb00ba4ad82cb72dfee8938935914ae0948f6af523d398ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.15-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:83382f69f154c6d09a6bf05622513ad37906cad52da74d4d8c799d2bc3b7f913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bb20373d81e6601750192197931de1496fed565dfd4a35ba2ebd050de5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:23 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:46:58 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:46:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:47:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:47:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:47:44 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:45 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:47:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9104943e23ec4f42cc42d4b1e5c51a9b80d86791854fde64e1ade9fb468e17f9`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae510462589d8cdc44d2c6a3b1267f0e3874efc2916f6ed6cef9f29c25c8bb67`  
		Last Modified: Thu, 16 May 2019 00:48:46 GMT  
		Size: 74.3 MB (74336931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23646ae61e9341bbbd0601b48b1a58d2198c7069c7d46554d7ecdbf51b419a`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c301b916a4e0d381e7c3b3f6e80d04d0afec7a94d44a986bc1d43a645cb74cc`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.15-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:34a7ee3f52becbd1b8947f16c02b52c6e9f3dfbd101d0953c1df7421f188c5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107083267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f256951026db34f1432226bfacc9f3f34afa1497e862d900413d3258a64fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:51:33 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:51:34 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:51:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:52:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:52:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:52:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:18 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:52:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac1d85e46e6a58047ce8cafb0e9cd8087bede9b95ce1e5127ff6603e28e79`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693148785c5e0724d9368261d10ca53d56137766aa0ed33b46c19db837e4bdb9`  
		Last Modified: Thu, 16 May 2019 00:59:27 GMT  
		Size: 73.2 MB (73249349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c668e859e1269ecf88a6dabfc552029baa5e0ad77d537305eae5080653530d5`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf4472df7bc3ef428b1ebf7fa8f63403037b1ddb1be421926e8607a85509fff`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.15-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2f4e89d2af187885e7b1359cf0bf0337ea0114fbb31fb7052b062c6732f505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119153967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4dbdfd72e358e62aa30ede0490b8848da32c6e8434ed63d4eb10575bf9a78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:14 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:41:30 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:41:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:43:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:43:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:43:25 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:43:40 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd491ba73457f25531c69fc10f25207fb1ac7f5901bea97c61727df1bdd857c`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d9a6121c80b4ab5c8c776d3e7c22f95b2f36e93b0a0a97dd6deb1251014a2`  
		Last Modified: Thu, 16 May 2019 00:45:02 GMT  
		Size: 77.3 MB (77260760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590ae0a85f0a8ebe0e4777564149a083c6bd172a66e92a45e9178db59f79cfa7`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6e2a60ee063f990c9dff12c518a91a419161774fb86e09f9d3908b44df0cbb`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:db6e7bda67ea88efb00ba4ad82cb72dfee8938935914ae0948f6af523d398ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:83382f69f154c6d09a6bf05622513ad37906cad52da74d4d8c799d2bc3b7f913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bb20373d81e6601750192197931de1496fed565dfd4a35ba2ebd050de5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:23 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:46:58 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:46:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:47:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:47:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:47:44 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:45 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:47:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9104943e23ec4f42cc42d4b1e5c51a9b80d86791854fde64e1ade9fb468e17f9`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae510462589d8cdc44d2c6a3b1267f0e3874efc2916f6ed6cef9f29c25c8bb67`  
		Last Modified: Thu, 16 May 2019 00:48:46 GMT  
		Size: 74.3 MB (74336931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23646ae61e9341bbbd0601b48b1a58d2198c7069c7d46554d7ecdbf51b419a`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c301b916a4e0d381e7c3b3f6e80d04d0afec7a94d44a986bc1d43a645cb74cc`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:34a7ee3f52becbd1b8947f16c02b52c6e9f3dfbd101d0953c1df7421f188c5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107083267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f256951026db34f1432226bfacc9f3f34afa1497e862d900413d3258a64fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:51:33 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:51:34 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:51:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:52:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:52:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:52:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:18 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:52:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac1d85e46e6a58047ce8cafb0e9cd8087bede9b95ce1e5127ff6603e28e79`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693148785c5e0724d9368261d10ca53d56137766aa0ed33b46c19db837e4bdb9`  
		Last Modified: Thu, 16 May 2019 00:59:27 GMT  
		Size: 73.2 MB (73249349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c668e859e1269ecf88a6dabfc552029baa5e0ad77d537305eae5080653530d5`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf4472df7bc3ef428b1ebf7fa8f63403037b1ddb1be421926e8607a85509fff`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2f4e89d2af187885e7b1359cf0bf0337ea0114fbb31fb7052b062c6732f505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119153967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4dbdfd72e358e62aa30ede0490b8848da32c6e8434ed63d4eb10575bf9a78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:14 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:41:30 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:41:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:43:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:43:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:43:25 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:43:40 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd491ba73457f25531c69fc10f25207fb1ac7f5901bea97c61727df1bdd857c`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d9a6121c80b4ab5c8c776d3e7c22f95b2f36e93b0a0a97dd6deb1251014a2`  
		Last Modified: Thu, 16 May 2019 00:45:02 GMT  
		Size: 77.3 MB (77260760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590ae0a85f0a8ebe0e4777564149a083c6bd172a66e92a45e9178db59f79cfa7`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6e2a60ee063f990c9dff12c518a91a419161774fb86e09f9d3908b44df0cbb`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4`

```console
$ docker pull mariadb@sha256:13bde6b21074f1e57f0ada6a196a13789d6a90e0ad92a6a757ef6eb1975b9cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4` - linux; amd64

```console
$ docker pull mariadb@sha256:ebf991956febd9bd2d445020a959fcc0d5b176dc40657c33323e39436d432fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115445512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3edbb60f1111f79c2552e6da9e7403954fd9d042f7fd30df9220b2f7c3516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:42:34 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:19:44 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:19:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:20:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:20:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:20:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:20:28 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:20:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4189206ef632ac1a84f7ad7a96f080e4f8f2cebab35488d670de8e9f30cccb07`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1747b9129756936d08cd668dd31e0bc04eccc91e8857cc865dab4f3391bf6d0c`  
		Last Modified: Thu, 23 May 2019 21:21:23 GMT  
		Size: 77.9 MB (77928435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e507fb89c8c32a15443b8b5d7d9dd481f823d3a1a5c6a9c3c53626302d943`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c14754d0f6d35a254ebfbeb5de205141a928050f3287d30f4fb6dfba8a003b`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b80f61be1b87c46116cf9273152fbea008ed6128688cc3ac952999af155d7179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110678747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a449b1209c5d5418ddf2e65fc38539702679eda9492e4e631f69bd73fdd695dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:50:35 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:39:37 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:39:39 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:40:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:40:16 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:40:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:40:19 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:40:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1583e3cc4214bea72012cb6e9f31fd7027c1126d198ed0c1e2748fd6eb3238d`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110dd2189b9080d5026fa942fea3517dd399b91b98199aeaac12816934985d3`  
		Last Modified: Thu, 23 May 2019 21:41:16 GMT  
		Size: 76.8 MB (76844823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28935a24ee2af758e0956fb480d4b204c5866f15a48c56afbbfb588c004f2bf0`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaebbb400b9e6a8b9be797c2c894ef8a9bcc30701db6740a29f951b47ad785`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5ade85809ab986f923c799189d93e19d0249dee3e12287d23bcd8a493a5cd2cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122665242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d0c47e50c9267a05afc5c84ce87142c74d5d1e5adeb3a2158b959fa39e95bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:09:30 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 15 May 2019 23:09:32 GMT
ENV MARIADB_VERSION=1:10.4.4+maria~bionic
# Wed, 15 May 2019 23:09:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:10:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:10:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:10:57 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:06 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:11:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b13bfe97bd3223aab4448af75b33de8250ec884c240694fffbb6fc9b12a7fc`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dadf08713204e3dae87d8a823a21988b061f6d4b842d1092fd93ce9abe2a2c9`  
		Last Modified: Wed, 15 May 2019 23:29:58 GMT  
		Size: 80.8 MB (80772034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040ca1c8014de7d32ce5124dd941bd3e4932c6c468fb29330cd9a20fe165ffcd`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb498d9c09aa4329343dbb3fda7cee81317e86ee48fb90fc194e0b2962e4eb69`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.5`

```console
$ docker pull mariadb@sha256:a3297ce16687b152f5eda00d0c8c11349bf967ce9a0e3dc089b5528fb95e35b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mariadb:10.4.5` - linux; amd64

```console
$ docker pull mariadb@sha256:ebf991956febd9bd2d445020a959fcc0d5b176dc40657c33323e39436d432fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115445512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3edbb60f1111f79c2552e6da9e7403954fd9d042f7fd30df9220b2f7c3516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:42:34 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:19:44 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:19:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:20:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:20:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:20:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:20:28 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:20:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4189206ef632ac1a84f7ad7a96f080e4f8f2cebab35488d670de8e9f30cccb07`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1747b9129756936d08cd668dd31e0bc04eccc91e8857cc865dab4f3391bf6d0c`  
		Last Modified: Thu, 23 May 2019 21:21:23 GMT  
		Size: 77.9 MB (77928435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e507fb89c8c32a15443b8b5d7d9dd481f823d3a1a5c6a9c3c53626302d943`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c14754d0f6d35a254ebfbeb5de205141a928050f3287d30f4fb6dfba8a003b`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.5` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b80f61be1b87c46116cf9273152fbea008ed6128688cc3ac952999af155d7179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110678747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a449b1209c5d5418ddf2e65fc38539702679eda9492e4e631f69bd73fdd695dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:50:35 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:39:37 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:39:39 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:40:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:40:16 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:40:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:40:19 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:40:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1583e3cc4214bea72012cb6e9f31fd7027c1126d198ed0c1e2748fd6eb3238d`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110dd2189b9080d5026fa942fea3517dd399b91b98199aeaac12816934985d3`  
		Last Modified: Thu, 23 May 2019 21:41:16 GMT  
		Size: 76.8 MB (76844823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28935a24ee2af758e0956fb480d4b204c5866f15a48c56afbbfb588c004f2bf0`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaebbb400b9e6a8b9be797c2c894ef8a9bcc30701db6740a29f951b47ad785`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.5-bionic`

```console
$ docker pull mariadb@sha256:a3297ce16687b152f5eda00d0c8c11349bf967ce9a0e3dc089b5528fb95e35b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mariadb:10.4.5-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:ebf991956febd9bd2d445020a959fcc0d5b176dc40657c33323e39436d432fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115445512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3edbb60f1111f79c2552e6da9e7403954fd9d042f7fd30df9220b2f7c3516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:42:34 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:19:44 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:19:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:20:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:20:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:20:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:20:28 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:20:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4189206ef632ac1a84f7ad7a96f080e4f8f2cebab35488d670de8e9f30cccb07`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1747b9129756936d08cd668dd31e0bc04eccc91e8857cc865dab4f3391bf6d0c`  
		Last Modified: Thu, 23 May 2019 21:21:23 GMT  
		Size: 77.9 MB (77928435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e507fb89c8c32a15443b8b5d7d9dd481f823d3a1a5c6a9c3c53626302d943`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c14754d0f6d35a254ebfbeb5de205141a928050f3287d30f4fb6dfba8a003b`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.5-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b80f61be1b87c46116cf9273152fbea008ed6128688cc3ac952999af155d7179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110678747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a449b1209c5d5418ddf2e65fc38539702679eda9492e4e631f69bd73fdd695dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:50:35 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:39:37 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:39:39 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:40:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:40:16 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:40:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:40:19 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:40:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1583e3cc4214bea72012cb6e9f31fd7027c1126d198ed0c1e2748fd6eb3238d`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110dd2189b9080d5026fa942fea3517dd399b91b98199aeaac12816934985d3`  
		Last Modified: Thu, 23 May 2019 21:41:16 GMT  
		Size: 76.8 MB (76844823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28935a24ee2af758e0956fb480d4b204c5866f15a48c56afbbfb588c004f2bf0`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaebbb400b9e6a8b9be797c2c894ef8a9bcc30701db6740a29f951b47ad785`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4-bionic`

```console
$ docker pull mariadb@sha256:13bde6b21074f1e57f0ada6a196a13789d6a90e0ad92a6a757ef6eb1975b9cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:ebf991956febd9bd2d445020a959fcc0d5b176dc40657c33323e39436d432fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115445512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3edbb60f1111f79c2552e6da9e7403954fd9d042f7fd30df9220b2f7c3516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:42:34 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:19:44 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:19:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:20:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:20:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:20:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:20:28 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:20:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4189206ef632ac1a84f7ad7a96f080e4f8f2cebab35488d670de8e9f30cccb07`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1747b9129756936d08cd668dd31e0bc04eccc91e8857cc865dab4f3391bf6d0c`  
		Last Modified: Thu, 23 May 2019 21:21:23 GMT  
		Size: 77.9 MB (77928435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e507fb89c8c32a15443b8b5d7d9dd481f823d3a1a5c6a9c3c53626302d943`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c14754d0f6d35a254ebfbeb5de205141a928050f3287d30f4fb6dfba8a003b`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b80f61be1b87c46116cf9273152fbea008ed6128688cc3ac952999af155d7179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110678747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a449b1209c5d5418ddf2e65fc38539702679eda9492e4e631f69bd73fdd695dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:50:35 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:39:37 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:39:39 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:40:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:40:16 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:40:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:40:19 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:40:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1583e3cc4214bea72012cb6e9f31fd7027c1126d198ed0c1e2748fd6eb3238d`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110dd2189b9080d5026fa942fea3517dd399b91b98199aeaac12816934985d3`  
		Last Modified: Thu, 23 May 2019 21:41:16 GMT  
		Size: 76.8 MB (76844823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28935a24ee2af758e0956fb480d4b204c5866f15a48c56afbbfb588c004f2bf0`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaebbb400b9e6a8b9be797c2c894ef8a9bcc30701db6740a29f951b47ad785`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5ade85809ab986f923c799189d93e19d0249dee3e12287d23bcd8a493a5cd2cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122665242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d0c47e50c9267a05afc5c84ce87142c74d5d1e5adeb3a2158b959fa39e95bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:09:30 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 15 May 2019 23:09:32 GMT
ENV MARIADB_VERSION=1:10.4.4+maria~bionic
# Wed, 15 May 2019 23:09:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:10:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:10:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:10:57 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:06 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:11:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b13bfe97bd3223aab4448af75b33de8250ec884c240694fffbb6fc9b12a7fc`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dadf08713204e3dae87d8a823a21988b061f6d4b842d1092fd93ce9abe2a2c9`  
		Last Modified: Wed, 15 May 2019 23:29:58 GMT  
		Size: 80.8 MB (80772034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040ca1c8014de7d32ce5124dd941bd3e4932c6c468fb29330cd9a20fe165ffcd`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb498d9c09aa4329343dbb3fda7cee81317e86ee48fb90fc194e0b2962e4eb69`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:db6e7bda67ea88efb00ba4ad82cb72dfee8938935914ae0948f6af523d398ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:83382f69f154c6d09a6bf05622513ad37906cad52da74d4d8c799d2bc3b7f913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bb20373d81e6601750192197931de1496fed565dfd4a35ba2ebd050de5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:23 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:46:58 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:46:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:47:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:47:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:47:44 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:45 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:47:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9104943e23ec4f42cc42d4b1e5c51a9b80d86791854fde64e1ade9fb468e17f9`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae510462589d8cdc44d2c6a3b1267f0e3874efc2916f6ed6cef9f29c25c8bb67`  
		Last Modified: Thu, 16 May 2019 00:48:46 GMT  
		Size: 74.3 MB (74336931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23646ae61e9341bbbd0601b48b1a58d2198c7069c7d46554d7ecdbf51b419a`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c301b916a4e0d381e7c3b3f6e80d04d0afec7a94d44a986bc1d43a645cb74cc`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:34a7ee3f52becbd1b8947f16c02b52c6e9f3dfbd101d0953c1df7421f188c5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107083267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f256951026db34f1432226bfacc9f3f34afa1497e862d900413d3258a64fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:51:33 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:51:34 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:51:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:52:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:52:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:52:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:18 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:52:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac1d85e46e6a58047ce8cafb0e9cd8087bede9b95ce1e5127ff6603e28e79`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693148785c5e0724d9368261d10ca53d56137766aa0ed33b46c19db837e4bdb9`  
		Last Modified: Thu, 16 May 2019 00:59:27 GMT  
		Size: 73.2 MB (73249349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c668e859e1269ecf88a6dabfc552029baa5e0ad77d537305eae5080653530d5`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf4472df7bc3ef428b1ebf7fa8f63403037b1ddb1be421926e8607a85509fff`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2f4e89d2af187885e7b1359cf0bf0337ea0114fbb31fb7052b062c6732f505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119153967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4dbdfd72e358e62aa30ede0490b8848da32c6e8434ed63d4eb10575bf9a78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:14 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:41:30 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:41:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:43:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:43:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:43:25 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:43:40 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd491ba73457f25531c69fc10f25207fb1ac7f5901bea97c61727df1bdd857c`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d9a6121c80b4ab5c8c776d3e7c22f95b2f36e93b0a0a97dd6deb1251014a2`  
		Last Modified: Thu, 16 May 2019 00:45:02 GMT  
		Size: 77.3 MB (77260760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590ae0a85f0a8ebe0e4777564149a083c6bd172a66e92a45e9178db59f79cfa7`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6e2a60ee063f990c9dff12c518a91a419161774fb86e09f9d3908b44df0cbb`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:5e1b22a019e1735f7e7c76a43f6c8fd404ee449768234358f65e92934fe1f6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:0901e838313efbfd7d209325353ff0d690eb92cee78fbc8a286e14dc0d657dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118431788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bf316a43259ccd2b33463aa1648dbdd241f947ec5883e2e8dc5d372a8d52b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:46:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:46:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:47:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:47:30 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:47:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:47:31 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:47:32 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:47:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f47c10fd78229421f90e693c7e2df02b10d2f792826e9e1fffa608c1f8cbb87`  
		Last Modified: Wed, 15 May 2019 22:49:15 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dea77d700c08a6ad7ef052d799f9c7f250d9522ad1fc96ea6d3cb4dfca0b4f`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a316a38c293473b7e16689954fccbede205f285c5b24bf6e71c09f0c3a7ae1`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 1.6 MB (1573478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177378e28a1d06f3405699a1da9a67b664fd60089a79f9189ecafeba7b5003c`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2740814b03d7294e66511af580c40f9948de5dd35e36f902a76a38c87e1e5e5`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 4.3 MB (4264196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb1663f13133d3ca7afef1ec931a4c8e4cd38cad0396d10569a9d5dae1e9a95`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 26.5 KB (26544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0b7f1092f095dd4c81be4e5fbc5f4436232ef5d12fbfcc191e4c2c2ac7af1`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2abb92f8edab84d12702147a2d8a5ece66c7e949a2ae3f206f02a01277b11e`  
		Last Modified: Wed, 15 May 2019 22:49:21 GMT  
		Size: 45.3 MB (45297154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de2d03b5426fe8db73ea7c1cd2197c1458b235e899ca7fb396639767b2264d`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb6a676f73cd28f81668391c20524372af67771f4ab29c4910c8559707c617f`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:b301b1ff57575424775585074938291dc6a2b50c3cc628f775ac72a346800231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114636271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7275de243d793826d0403de528e4f3148cd72f3bae40fdcd21165095484ce725`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:48:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:48:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:48:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:49:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:49:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:49:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:49:20 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:49:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:49:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:49:22 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:49:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:49:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:49:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:49:43 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:49:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:49:44 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:49:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e19efd470c8d7a5b652b6176f31ee90ef24adbe32144c1453cedeb1b18b35c`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791740ff6ef220c9d79415334fa120ef5bb1072c29a8b3e784254c7944671174`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ecc4caa6ebf2776be485b3f7209484d2fb436ad74eefa7b904648f267751e9`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 1.6 MB (1553586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0342df16554597c41a249dd8682e0ad0eb24fd448eae2861b4e682ff91d1d821`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327374c8f993e475fb10cf72af34cd0201852f37c907d481d7002ae2ba4d1fe`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 4.3 MB (4250245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214658dab7814b02b36b7306f24439b31eb59356ce1bed689fcd191833fcf0e`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b289b462d130726d74ed2ad3a380c8bb5db370218ccd26f90bb622dd1c3a789`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa3d7f63de7f9eb37232fe75ef6a7d3bc1c7702efc63abcee6dc839d598e7f`  
		Last Modified: Wed, 15 May 2019 22:50:37 GMT  
		Size: 43.8 MB (43831521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780dcc48af0a0d6abdbca85ae3d82fc2913365ddde78cba2ddcd4f095cdc54b7`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b781cf8eac3049c5549900c6aa29462c0c8ad6fa0151eee103d2e7f4e5d02`  
		Last Modified: Wed, 15 May 2019 22:50:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6f41a0f5904ca719406a91f03a7ddec44210c9025c45879771597e0edf7c715e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111980923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a148cac096d23f87d64c3b9db5c7df10088bd5c41f5899d13f4d5bbe4317ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:25:41 GMT
ADD file:49be517679539bdfd430317be32b62071f95099b0dda809856dcdcd45e7d8440 in / 
# Wed, 15 May 2019 22:25:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:26:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:26:12 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:24:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:25:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:25:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:26:07 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:26:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:27:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:27:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:27:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 23:27:16 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 23:27:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:28:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:28:37 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:28:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:28:49 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:28:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:194e7578e9744f78b5ef4cba405817c51875be22f79139df0457d9466713da8c`  
		Last Modified: Wed, 15 May 2019 22:31:53 GMT  
		Size: 69.9 MB (69854595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dd666355352470eb22f50cd90b37cc10f4c18d72cb3212ab9b6d9ed6ee4457`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 63.4 KB (63423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fcdf7179bfe9ddf4086988923457d79de9302c8b719dbf26407f8ccfd530c8`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd558e63c71b77b7caa0a52fda32c53bebd77a5a1231174d900c78484a0f8ed7`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd95c1a344d6575f057a82c71be044a06a34188a34ad54ef533848eb49ccbd`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a70961f8b60c28f6f9333f54ffa33f63a6f8f959638682f98031ac619cedc9`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48899a10195fd7c59bc192a2d16611bda8e11cc2acd4280aed9f7473e271a1dd`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 1.5 MB (1546744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7072755498c89f992008800b4dffd7caeb5eff9896e4f1169a884f932875c8a1`  
		Last Modified: Wed, 15 May 2019 23:33:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6524a8864ebb0e6bfeeca8a49b25330a4ea27582fc6e66add59c27b102c9350c`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 4.3 MB (4290565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41265742200d4efc04d2e76c3169a7cae1281f4a524c3e7d47e4da1ba43caa1`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0172aa108c424ccc9adeda18f9d40f2df308720c301519ba11c3c888fdf1aa`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fbaaf8b13085a24a4e9492d2603494f73eb8c670078843841c76491965483f`  
		Last Modified: Wed, 15 May 2019 23:33:08 GMT  
		Size: 36.2 MB (36192820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5786bbd9b6687165c0dcdc9cf2ff7ce0be82d016e7ff6a6f69a0e6f8573eb554`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b38159b281aa625dbe60e4a14faa75c762e40c7b8b532b3317e7d6af4cc6dc0`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:5e1b22a019e1735f7e7c76a43f6c8fd404ee449768234358f65e92934fe1f6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:0901e838313efbfd7d209325353ff0d690eb92cee78fbc8a286e14dc0d657dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118431788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bf316a43259ccd2b33463aa1648dbdd241f947ec5883e2e8dc5d372a8d52b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:46:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:46:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:47:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:47:30 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:47:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:47:31 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:47:32 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:47:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f47c10fd78229421f90e693c7e2df02b10d2f792826e9e1fffa608c1f8cbb87`  
		Last Modified: Wed, 15 May 2019 22:49:15 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dea77d700c08a6ad7ef052d799f9c7f250d9522ad1fc96ea6d3cb4dfca0b4f`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a316a38c293473b7e16689954fccbede205f285c5b24bf6e71c09f0c3a7ae1`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 1.6 MB (1573478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177378e28a1d06f3405699a1da9a67b664fd60089a79f9189ecafeba7b5003c`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2740814b03d7294e66511af580c40f9948de5dd35e36f902a76a38c87e1e5e5`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 4.3 MB (4264196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb1663f13133d3ca7afef1ec931a4c8e4cd38cad0396d10569a9d5dae1e9a95`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 26.5 KB (26544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0b7f1092f095dd4c81be4e5fbc5f4436232ef5d12fbfcc191e4c2c2ac7af1`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2abb92f8edab84d12702147a2d8a5ece66c7e949a2ae3f206f02a01277b11e`  
		Last Modified: Wed, 15 May 2019 22:49:21 GMT  
		Size: 45.3 MB (45297154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de2d03b5426fe8db73ea7c1cd2197c1458b235e899ca7fb396639767b2264d`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb6a676f73cd28f81668391c20524372af67771f4ab29c4910c8559707c617f`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:b301b1ff57575424775585074938291dc6a2b50c3cc628f775ac72a346800231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114636271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7275de243d793826d0403de528e4f3148cd72f3bae40fdcd21165095484ce725`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:48:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:48:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:48:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:49:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:49:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:49:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:49:20 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:49:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:49:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:49:22 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:49:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:49:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:49:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:49:43 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:49:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:49:44 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:49:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e19efd470c8d7a5b652b6176f31ee90ef24adbe32144c1453cedeb1b18b35c`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791740ff6ef220c9d79415334fa120ef5bb1072c29a8b3e784254c7944671174`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ecc4caa6ebf2776be485b3f7209484d2fb436ad74eefa7b904648f267751e9`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 1.6 MB (1553586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0342df16554597c41a249dd8682e0ad0eb24fd448eae2861b4e682ff91d1d821`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327374c8f993e475fb10cf72af34cd0201852f37c907d481d7002ae2ba4d1fe`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 4.3 MB (4250245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214658dab7814b02b36b7306f24439b31eb59356ce1bed689fcd191833fcf0e`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b289b462d130726d74ed2ad3a380c8bb5db370218ccd26f90bb622dd1c3a789`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa3d7f63de7f9eb37232fe75ef6a7d3bc1c7702efc63abcee6dc839d598e7f`  
		Last Modified: Wed, 15 May 2019 22:50:37 GMT  
		Size: 43.8 MB (43831521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780dcc48af0a0d6abdbca85ae3d82fc2913365ddde78cba2ddcd4f095cdc54b7`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b781cf8eac3049c5549900c6aa29462c0c8ad6fa0151eee103d2e7f4e5d02`  
		Last Modified: Wed, 15 May 2019 22:50:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6f41a0f5904ca719406a91f03a7ddec44210c9025c45879771597e0edf7c715e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111980923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a148cac096d23f87d64c3b9db5c7df10088bd5c41f5899d13f4d5bbe4317ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:25:41 GMT
ADD file:49be517679539bdfd430317be32b62071f95099b0dda809856dcdcd45e7d8440 in / 
# Wed, 15 May 2019 22:25:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:26:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:26:12 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:24:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:25:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:25:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:26:07 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:26:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:27:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:27:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:27:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 23:27:16 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 23:27:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:28:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:28:37 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:28:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:28:49 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:28:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:194e7578e9744f78b5ef4cba405817c51875be22f79139df0457d9466713da8c`  
		Last Modified: Wed, 15 May 2019 22:31:53 GMT  
		Size: 69.9 MB (69854595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dd666355352470eb22f50cd90b37cc10f4c18d72cb3212ab9b6d9ed6ee4457`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 63.4 KB (63423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fcdf7179bfe9ddf4086988923457d79de9302c8b719dbf26407f8ccfd530c8`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd558e63c71b77b7caa0a52fda32c53bebd77a5a1231174d900c78484a0f8ed7`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd95c1a344d6575f057a82c71be044a06a34188a34ad54ef533848eb49ccbd`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a70961f8b60c28f6f9333f54ffa33f63a6f8f959638682f98031ac619cedc9`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48899a10195fd7c59bc192a2d16611bda8e11cc2acd4280aed9f7473e271a1dd`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 1.5 MB (1546744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7072755498c89f992008800b4dffd7caeb5eff9896e4f1169a884f932875c8a1`  
		Last Modified: Wed, 15 May 2019 23:33:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6524a8864ebb0e6bfeeca8a49b25330a4ea27582fc6e66add59c27b102c9350c`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 4.3 MB (4290565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41265742200d4efc04d2e76c3169a7cae1281f4a524c3e7d47e4da1ba43caa1`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0172aa108c424ccc9adeda18f9d40f2df308720c301519ba11c3c888fdf1aa`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fbaaf8b13085a24a4e9492d2603494f73eb8c670078843841c76491965483f`  
		Last Modified: Wed, 15 May 2019 23:33:08 GMT  
		Size: 36.2 MB (36192820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5786bbd9b6687165c0dcdc9cf2ff7ce0be82d016e7ff6a6f69a0e6f8573eb554`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b38159b281aa625dbe60e4a14faa75c762e40c7b8b532b3317e7d6af4cc6dc0`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.64`

```console
$ docker pull mariadb@sha256:5e1b22a019e1735f7e7c76a43f6c8fd404ee449768234358f65e92934fe1f6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.64` - linux; amd64

```console
$ docker pull mariadb@sha256:0901e838313efbfd7d209325353ff0d690eb92cee78fbc8a286e14dc0d657dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118431788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bf316a43259ccd2b33463aa1648dbdd241f947ec5883e2e8dc5d372a8d52b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:46:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:46:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:47:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:47:30 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:47:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:47:31 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:47:32 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:47:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f47c10fd78229421f90e693c7e2df02b10d2f792826e9e1fffa608c1f8cbb87`  
		Last Modified: Wed, 15 May 2019 22:49:15 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dea77d700c08a6ad7ef052d799f9c7f250d9522ad1fc96ea6d3cb4dfca0b4f`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a316a38c293473b7e16689954fccbede205f285c5b24bf6e71c09f0c3a7ae1`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 1.6 MB (1573478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177378e28a1d06f3405699a1da9a67b664fd60089a79f9189ecafeba7b5003c`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2740814b03d7294e66511af580c40f9948de5dd35e36f902a76a38c87e1e5e5`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 4.3 MB (4264196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb1663f13133d3ca7afef1ec931a4c8e4cd38cad0396d10569a9d5dae1e9a95`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 26.5 KB (26544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0b7f1092f095dd4c81be4e5fbc5f4436232ef5d12fbfcc191e4c2c2ac7af1`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2abb92f8edab84d12702147a2d8a5ece66c7e949a2ae3f206f02a01277b11e`  
		Last Modified: Wed, 15 May 2019 22:49:21 GMT  
		Size: 45.3 MB (45297154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de2d03b5426fe8db73ea7c1cd2197c1458b235e899ca7fb396639767b2264d`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb6a676f73cd28f81668391c20524372af67771f4ab29c4910c8559707c617f`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.64` - linux; 386

```console
$ docker pull mariadb@sha256:b301b1ff57575424775585074938291dc6a2b50c3cc628f775ac72a346800231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114636271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7275de243d793826d0403de528e4f3148cd72f3bae40fdcd21165095484ce725`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:48:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:48:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:48:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:49:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:49:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:49:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:49:20 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:49:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:49:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:49:22 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:49:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:49:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:49:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:49:43 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:49:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:49:44 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:49:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e19efd470c8d7a5b652b6176f31ee90ef24adbe32144c1453cedeb1b18b35c`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791740ff6ef220c9d79415334fa120ef5bb1072c29a8b3e784254c7944671174`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ecc4caa6ebf2776be485b3f7209484d2fb436ad74eefa7b904648f267751e9`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 1.6 MB (1553586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0342df16554597c41a249dd8682e0ad0eb24fd448eae2861b4e682ff91d1d821`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327374c8f993e475fb10cf72af34cd0201852f37c907d481d7002ae2ba4d1fe`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 4.3 MB (4250245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214658dab7814b02b36b7306f24439b31eb59356ce1bed689fcd191833fcf0e`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b289b462d130726d74ed2ad3a380c8bb5db370218ccd26f90bb622dd1c3a789`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa3d7f63de7f9eb37232fe75ef6a7d3bc1c7702efc63abcee6dc839d598e7f`  
		Last Modified: Wed, 15 May 2019 22:50:37 GMT  
		Size: 43.8 MB (43831521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780dcc48af0a0d6abdbca85ae3d82fc2913365ddde78cba2ddcd4f095cdc54b7`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b781cf8eac3049c5549900c6aa29462c0c8ad6fa0151eee103d2e7f4e5d02`  
		Last Modified: Wed, 15 May 2019 22:50:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.64` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6f41a0f5904ca719406a91f03a7ddec44210c9025c45879771597e0edf7c715e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111980923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a148cac096d23f87d64c3b9db5c7df10088bd5c41f5899d13f4d5bbe4317ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:25:41 GMT
ADD file:49be517679539bdfd430317be32b62071f95099b0dda809856dcdcd45e7d8440 in / 
# Wed, 15 May 2019 22:25:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:26:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:26:12 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:24:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:25:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:25:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:26:07 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:26:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:27:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:27:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:27:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 23:27:16 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 23:27:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:28:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:28:37 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:28:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:28:49 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:28:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:194e7578e9744f78b5ef4cba405817c51875be22f79139df0457d9466713da8c`  
		Last Modified: Wed, 15 May 2019 22:31:53 GMT  
		Size: 69.9 MB (69854595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dd666355352470eb22f50cd90b37cc10f4c18d72cb3212ab9b6d9ed6ee4457`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 63.4 KB (63423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fcdf7179bfe9ddf4086988923457d79de9302c8b719dbf26407f8ccfd530c8`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd558e63c71b77b7caa0a52fda32c53bebd77a5a1231174d900c78484a0f8ed7`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd95c1a344d6575f057a82c71be044a06a34188a34ad54ef533848eb49ccbd`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a70961f8b60c28f6f9333f54ffa33f63a6f8f959638682f98031ac619cedc9`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48899a10195fd7c59bc192a2d16611bda8e11cc2acd4280aed9f7473e271a1dd`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 1.5 MB (1546744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7072755498c89f992008800b4dffd7caeb5eff9896e4f1169a884f932875c8a1`  
		Last Modified: Wed, 15 May 2019 23:33:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6524a8864ebb0e6bfeeca8a49b25330a4ea27582fc6e66add59c27b102c9350c`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 4.3 MB (4290565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41265742200d4efc04d2e76c3169a7cae1281f4a524c3e7d47e4da1ba43caa1`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0172aa108c424ccc9adeda18f9d40f2df308720c301519ba11c3c888fdf1aa`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fbaaf8b13085a24a4e9492d2603494f73eb8c670078843841c76491965483f`  
		Last Modified: Wed, 15 May 2019 23:33:08 GMT  
		Size: 36.2 MB (36192820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5786bbd9b6687165c0dcdc9cf2ff7ce0be82d016e7ff6a6f69a0e6f8573eb554`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b38159b281aa625dbe60e4a14faa75c762e40c7b8b532b3317e7d6af4cc6dc0`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.64-trusty`

```console
$ docker pull mariadb@sha256:5e1b22a019e1735f7e7c76a43f6c8fd404ee449768234358f65e92934fe1f6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.64-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:0901e838313efbfd7d209325353ff0d690eb92cee78fbc8a286e14dc0d657dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118431788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bf316a43259ccd2b33463aa1648dbdd241f947ec5883e2e8dc5d372a8d52b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:46:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:46:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:47:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:47:30 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:47:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:47:31 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:47:32 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:47:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f47c10fd78229421f90e693c7e2df02b10d2f792826e9e1fffa608c1f8cbb87`  
		Last Modified: Wed, 15 May 2019 22:49:15 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dea77d700c08a6ad7ef052d799f9c7f250d9522ad1fc96ea6d3cb4dfca0b4f`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a316a38c293473b7e16689954fccbede205f285c5b24bf6e71c09f0c3a7ae1`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 1.6 MB (1573478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177378e28a1d06f3405699a1da9a67b664fd60089a79f9189ecafeba7b5003c`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2740814b03d7294e66511af580c40f9948de5dd35e36f902a76a38c87e1e5e5`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 4.3 MB (4264196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb1663f13133d3ca7afef1ec931a4c8e4cd38cad0396d10569a9d5dae1e9a95`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 26.5 KB (26544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0b7f1092f095dd4c81be4e5fbc5f4436232ef5d12fbfcc191e4c2c2ac7af1`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2abb92f8edab84d12702147a2d8a5ece66c7e949a2ae3f206f02a01277b11e`  
		Last Modified: Wed, 15 May 2019 22:49:21 GMT  
		Size: 45.3 MB (45297154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de2d03b5426fe8db73ea7c1cd2197c1458b235e899ca7fb396639767b2264d`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb6a676f73cd28f81668391c20524372af67771f4ab29c4910c8559707c617f`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.64-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:b301b1ff57575424775585074938291dc6a2b50c3cc628f775ac72a346800231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114636271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7275de243d793826d0403de528e4f3148cd72f3bae40fdcd21165095484ce725`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:48:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:48:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:48:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:49:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:49:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:49:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:49:20 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:49:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:49:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:49:22 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:49:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:49:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:49:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:49:43 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:49:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:49:44 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:49:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e19efd470c8d7a5b652b6176f31ee90ef24adbe32144c1453cedeb1b18b35c`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791740ff6ef220c9d79415334fa120ef5bb1072c29a8b3e784254c7944671174`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ecc4caa6ebf2776be485b3f7209484d2fb436ad74eefa7b904648f267751e9`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 1.6 MB (1553586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0342df16554597c41a249dd8682e0ad0eb24fd448eae2861b4e682ff91d1d821`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327374c8f993e475fb10cf72af34cd0201852f37c907d481d7002ae2ba4d1fe`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 4.3 MB (4250245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214658dab7814b02b36b7306f24439b31eb59356ce1bed689fcd191833fcf0e`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b289b462d130726d74ed2ad3a380c8bb5db370218ccd26f90bb622dd1c3a789`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa3d7f63de7f9eb37232fe75ef6a7d3bc1c7702efc63abcee6dc839d598e7f`  
		Last Modified: Wed, 15 May 2019 22:50:37 GMT  
		Size: 43.8 MB (43831521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780dcc48af0a0d6abdbca85ae3d82fc2913365ddde78cba2ddcd4f095cdc54b7`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b781cf8eac3049c5549900c6aa29462c0c8ad6fa0151eee103d2e7f4e5d02`  
		Last Modified: Wed, 15 May 2019 22:50:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.64-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6f41a0f5904ca719406a91f03a7ddec44210c9025c45879771597e0edf7c715e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111980923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a148cac096d23f87d64c3b9db5c7df10088bd5c41f5899d13f4d5bbe4317ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:25:41 GMT
ADD file:49be517679539bdfd430317be32b62071f95099b0dda809856dcdcd45e7d8440 in / 
# Wed, 15 May 2019 22:25:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:26:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:26:12 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:24:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:25:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:25:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:26:07 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:26:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:27:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:27:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:27:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 23:27:16 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 23:27:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:28:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:28:37 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:28:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:28:49 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:28:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:194e7578e9744f78b5ef4cba405817c51875be22f79139df0457d9466713da8c`  
		Last Modified: Wed, 15 May 2019 22:31:53 GMT  
		Size: 69.9 MB (69854595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dd666355352470eb22f50cd90b37cc10f4c18d72cb3212ab9b6d9ed6ee4457`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 63.4 KB (63423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fcdf7179bfe9ddf4086988923457d79de9302c8b719dbf26407f8ccfd530c8`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd558e63c71b77b7caa0a52fda32c53bebd77a5a1231174d900c78484a0f8ed7`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd95c1a344d6575f057a82c71be044a06a34188a34ad54ef533848eb49ccbd`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a70961f8b60c28f6f9333f54ffa33f63a6f8f959638682f98031ac619cedc9`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48899a10195fd7c59bc192a2d16611bda8e11cc2acd4280aed9f7473e271a1dd`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 1.5 MB (1546744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7072755498c89f992008800b4dffd7caeb5eff9896e4f1169a884f932875c8a1`  
		Last Modified: Wed, 15 May 2019 23:33:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6524a8864ebb0e6bfeeca8a49b25330a4ea27582fc6e66add59c27b102c9350c`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 4.3 MB (4290565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41265742200d4efc04d2e76c3169a7cae1281f4a524c3e7d47e4da1ba43caa1`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0172aa108c424ccc9adeda18f9d40f2df308720c301519ba11c3c888fdf1aa`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fbaaf8b13085a24a4e9492d2603494f73eb8c670078843841c76491965483f`  
		Last Modified: Wed, 15 May 2019 23:33:08 GMT  
		Size: 36.2 MB (36192820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5786bbd9b6687165c0dcdc9cf2ff7ce0be82d016e7ff6a6f69a0e6f8573eb554`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b38159b281aa625dbe60e4a14faa75c762e40c7b8b532b3317e7d6af4cc6dc0`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:5e1b22a019e1735f7e7c76a43f6c8fd404ee449768234358f65e92934fe1f6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:0901e838313efbfd7d209325353ff0d690eb92cee78fbc8a286e14dc0d657dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118431788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bf316a43259ccd2b33463aa1648dbdd241f947ec5883e2e8dc5d372a8d52b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:46:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:46:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:47:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:47:30 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:47:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:47:31 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:47:32 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:47:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f47c10fd78229421f90e693c7e2df02b10d2f792826e9e1fffa608c1f8cbb87`  
		Last Modified: Wed, 15 May 2019 22:49:15 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dea77d700c08a6ad7ef052d799f9c7f250d9522ad1fc96ea6d3cb4dfca0b4f`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a316a38c293473b7e16689954fccbede205f285c5b24bf6e71c09f0c3a7ae1`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 1.6 MB (1573478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177378e28a1d06f3405699a1da9a67b664fd60089a79f9189ecafeba7b5003c`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2740814b03d7294e66511af580c40f9948de5dd35e36f902a76a38c87e1e5e5`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 4.3 MB (4264196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb1663f13133d3ca7afef1ec931a4c8e4cd38cad0396d10569a9d5dae1e9a95`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 26.5 KB (26544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0b7f1092f095dd4c81be4e5fbc5f4436232ef5d12fbfcc191e4c2c2ac7af1`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2abb92f8edab84d12702147a2d8a5ece66c7e949a2ae3f206f02a01277b11e`  
		Last Modified: Wed, 15 May 2019 22:49:21 GMT  
		Size: 45.3 MB (45297154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de2d03b5426fe8db73ea7c1cd2197c1458b235e899ca7fb396639767b2264d`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb6a676f73cd28f81668391c20524372af67771f4ab29c4910c8559707c617f`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:b301b1ff57575424775585074938291dc6a2b50c3cc628f775ac72a346800231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114636271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7275de243d793826d0403de528e4f3148cd72f3bae40fdcd21165095484ce725`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:48:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:48:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:48:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:49:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:49:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:49:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:49:20 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:49:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:49:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:49:22 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:49:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:49:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:49:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:49:43 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:49:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:49:44 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:49:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e19efd470c8d7a5b652b6176f31ee90ef24adbe32144c1453cedeb1b18b35c`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791740ff6ef220c9d79415334fa120ef5bb1072c29a8b3e784254c7944671174`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ecc4caa6ebf2776be485b3f7209484d2fb436ad74eefa7b904648f267751e9`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 1.6 MB (1553586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0342df16554597c41a249dd8682e0ad0eb24fd448eae2861b4e682ff91d1d821`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327374c8f993e475fb10cf72af34cd0201852f37c907d481d7002ae2ba4d1fe`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 4.3 MB (4250245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214658dab7814b02b36b7306f24439b31eb59356ce1bed689fcd191833fcf0e`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b289b462d130726d74ed2ad3a380c8bb5db370218ccd26f90bb622dd1c3a789`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa3d7f63de7f9eb37232fe75ef6a7d3bc1c7702efc63abcee6dc839d598e7f`  
		Last Modified: Wed, 15 May 2019 22:50:37 GMT  
		Size: 43.8 MB (43831521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780dcc48af0a0d6abdbca85ae3d82fc2913365ddde78cba2ddcd4f095cdc54b7`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b781cf8eac3049c5549900c6aa29462c0c8ad6fa0151eee103d2e7f4e5d02`  
		Last Modified: Wed, 15 May 2019 22:50:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6f41a0f5904ca719406a91f03a7ddec44210c9025c45879771597e0edf7c715e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111980923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a148cac096d23f87d64c3b9db5c7df10088bd5c41f5899d13f4d5bbe4317ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:25:41 GMT
ADD file:49be517679539bdfd430317be32b62071f95099b0dda809856dcdcd45e7d8440 in / 
# Wed, 15 May 2019 22:25:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:26:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:26:12 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:24:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:25:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:25:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:26:07 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:26:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:27:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:27:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:27:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 23:27:16 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 23:27:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:28:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:28:37 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:28:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:28:49 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:28:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:194e7578e9744f78b5ef4cba405817c51875be22f79139df0457d9466713da8c`  
		Last Modified: Wed, 15 May 2019 22:31:53 GMT  
		Size: 69.9 MB (69854595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dd666355352470eb22f50cd90b37cc10f4c18d72cb3212ab9b6d9ed6ee4457`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 63.4 KB (63423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fcdf7179bfe9ddf4086988923457d79de9302c8b719dbf26407f8ccfd530c8`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd558e63c71b77b7caa0a52fda32c53bebd77a5a1231174d900c78484a0f8ed7`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd95c1a344d6575f057a82c71be044a06a34188a34ad54ef533848eb49ccbd`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a70961f8b60c28f6f9333f54ffa33f63a6f8f959638682f98031ac619cedc9`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48899a10195fd7c59bc192a2d16611bda8e11cc2acd4280aed9f7473e271a1dd`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 1.5 MB (1546744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7072755498c89f992008800b4dffd7caeb5eff9896e4f1169a884f932875c8a1`  
		Last Modified: Wed, 15 May 2019 23:33:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6524a8864ebb0e6bfeeca8a49b25330a4ea27582fc6e66add59c27b102c9350c`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 4.3 MB (4290565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41265742200d4efc04d2e76c3169a7cae1281f4a524c3e7d47e4da1ba43caa1`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0172aa108c424ccc9adeda18f9d40f2df308720c301519ba11c3c888fdf1aa`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fbaaf8b13085a24a4e9492d2603494f73eb8c670078843841c76491965483f`  
		Last Modified: Wed, 15 May 2019 23:33:08 GMT  
		Size: 36.2 MB (36192820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5786bbd9b6687165c0dcdc9cf2ff7ce0be82d016e7ff6a6f69a0e6f8573eb554`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b38159b281aa625dbe60e4a14faa75c762e40c7b8b532b3317e7d6af4cc6dc0`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:5e1b22a019e1735f7e7c76a43f6c8fd404ee449768234358f65e92934fe1f6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:0901e838313efbfd7d209325353ff0d690eb92cee78fbc8a286e14dc0d657dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118431788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bf316a43259ccd2b33463aa1648dbdd241f947ec5883e2e8dc5d372a8d52b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:46:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:46:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:46:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:46:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:47:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:47:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:13 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:47:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:47:14 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:47:15 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:47:30 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:47:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:47:31 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:47:32 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:47:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f47c10fd78229421f90e693c7e2df02b10d2f792826e9e1fffa608c1f8cbb87`  
		Last Modified: Wed, 15 May 2019 22:49:15 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dea77d700c08a6ad7ef052d799f9c7f250d9522ad1fc96ea6d3cb4dfca0b4f`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a316a38c293473b7e16689954fccbede205f285c5b24bf6e71c09f0c3a7ae1`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 1.6 MB (1573478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177378e28a1d06f3405699a1da9a67b664fd60089a79f9189ecafeba7b5003c`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2740814b03d7294e66511af580c40f9948de5dd35e36f902a76a38c87e1e5e5`  
		Last Modified: Wed, 15 May 2019 22:49:14 GMT  
		Size: 4.3 MB (4264196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb1663f13133d3ca7afef1ec931a4c8e4cd38cad0396d10569a9d5dae1e9a95`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 26.5 KB (26544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0b7f1092f095dd4c81be4e5fbc5f4436232ef5d12fbfcc191e4c2c2ac7af1`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2abb92f8edab84d12702147a2d8a5ece66c7e949a2ae3f206f02a01277b11e`  
		Last Modified: Wed, 15 May 2019 22:49:21 GMT  
		Size: 45.3 MB (45297154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de2d03b5426fe8db73ea7c1cd2197c1458b235e899ca7fb396639767b2264d`  
		Last Modified: Wed, 15 May 2019 22:49:12 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb6a676f73cd28f81668391c20524372af67771f4ab29c4910c8559707c617f`  
		Last Modified: Wed, 15 May 2019 22:49:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:b301b1ff57575424775585074938291dc6a2b50c3cc628f775ac72a346800231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114636271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7275de243d793826d0403de528e4f3148cd72f3bae40fdcd21165095484ce725`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:40:18 GMT
ADD file:81812c7536d5965bef84e83c0948a955ee1f094914ef85f9d971538b79ea3455 in / 
# Wed, 15 May 2019 21:40:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:48:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:48:47 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:48:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:49:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:49:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:49:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:49:20 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:49:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:49:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 22:49:22 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 22:49:22 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 22:49:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 22:49:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 22:49:43 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 22:49:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 22:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 22:49:44 GMT
EXPOSE 3306
# Wed, 15 May 2019 22:49:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ef7df603d30353e1a64bb1d79bfd65f18b60539ad5f52c07086dab8867b15802`  
		Last Modified: Wed, 15 May 2019 21:42:22 GMT  
		Size: 64.9 MB (64903354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b7484c6bd233505b677db9b58563f8b825b9602a3695c8817813a4302871b`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 64.9 KB (64860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff0576ae04853d73bc8ee3897e46dfed937b8b35fbc309f3adcc6e443e1ffe`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a79d1bb0b0b00253d099d5e40c41f0cb5abab26768a48bd98e8c0461101dd`  
		Last Modified: Wed, 15 May 2019 21:42:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e19efd470c8d7a5b652b6176f31ee90ef24adbe32144c1453cedeb1b18b35c`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791740ff6ef220c9d79415334fa120ef5bb1072c29a8b3e784254c7944671174`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ecc4caa6ebf2776be485b3f7209484d2fb436ad74eefa7b904648f267751e9`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 1.6 MB (1553586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0342df16554597c41a249dd8682e0ad0eb24fd448eae2861b4e682ff91d1d821`  
		Last Modified: Wed, 15 May 2019 22:50:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327374c8f993e475fb10cf72af34cd0201852f37c907d481d7002ae2ba4d1fe`  
		Last Modified: Wed, 15 May 2019 22:50:31 GMT  
		Size: 4.3 MB (4250245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214658dab7814b02b36b7306f24439b31eb59356ce1bed689fcd191833fcf0e`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b289b462d130726d74ed2ad3a380c8bb5db370218ccd26f90bb622dd1c3a789`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fa3d7f63de7f9eb37232fe75ef6a7d3bc1c7702efc63abcee6dc839d598e7f`  
		Last Modified: Wed, 15 May 2019 22:50:37 GMT  
		Size: 43.8 MB (43831521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780dcc48af0a0d6abdbca85ae3d82fc2913365ddde78cba2ddcd4f095cdc54b7`  
		Last Modified: Wed, 15 May 2019 22:50:29 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b781cf8eac3049c5549900c6aa29462c0c8ad6fa0151eee103d2e7f4e5d02`  
		Last Modified: Wed, 15 May 2019 22:50:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6f41a0f5904ca719406a91f03a7ddec44210c9025c45879771597e0edf7c715e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111980923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a148cac096d23f87d64c3b9db5c7df10088bd5c41f5899d13f4d5bbe4317ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:25:41 GMT
ADD file:49be517679539bdfd430317be32b62071f95099b0dda809856dcdcd45e7d8440 in / 
# Wed, 15 May 2019 22:25:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:26:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:26:12 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:24:53 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:25:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:25:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:26:07 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:26:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:27:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:27:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:27:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 15 May 2019 23:27:16 GMT
ENV MARIADB_VERSION=5.5.64+maria-1~trusty
# Wed, 15 May 2019 23:27:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:28:33 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:28:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:28:37 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:28:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:28:49 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:28:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:194e7578e9744f78b5ef4cba405817c51875be22f79139df0457d9466713da8c`  
		Last Modified: Wed, 15 May 2019 22:31:53 GMT  
		Size: 69.9 MB (69854595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dd666355352470eb22f50cd90b37cc10f4c18d72cb3212ab9b6d9ed6ee4457`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 63.4 KB (63423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fcdf7179bfe9ddf4086988923457d79de9302c8b719dbf26407f8ccfd530c8`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd558e63c71b77b7caa0a52fda32c53bebd77a5a1231174d900c78484a0f8ed7`  
		Last Modified: Wed, 15 May 2019 22:30:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd95c1a344d6575f057a82c71be044a06a34188a34ad54ef533848eb49ccbd`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a70961f8b60c28f6f9333f54ffa33f63a6f8f959638682f98031ac619cedc9`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48899a10195fd7c59bc192a2d16611bda8e11cc2acd4280aed9f7473e271a1dd`  
		Last Modified: Wed, 15 May 2019 23:33:02 GMT  
		Size: 1.5 MB (1546744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7072755498c89f992008800b4dffd7caeb5eff9896e4f1169a884f932875c8a1`  
		Last Modified: Wed, 15 May 2019 23:33:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6524a8864ebb0e6bfeeca8a49b25330a4ea27582fc6e66add59c27b102c9350c`  
		Last Modified: Wed, 15 May 2019 23:33:03 GMT  
		Size: 4.3 MB (4290565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41265742200d4efc04d2e76c3169a7cae1281f4a524c3e7d47e4da1ba43caa1`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0172aa108c424ccc9adeda18f9d40f2df308720c301519ba11c3c888fdf1aa`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fbaaf8b13085a24a4e9492d2603494f73eb8c670078843841c76491965483f`  
		Last Modified: Wed, 15 May 2019 23:33:08 GMT  
		Size: 36.2 MB (36192820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5786bbd9b6687165c0dcdc9cf2ff7ce0be82d016e7ff6a6f69a0e6f8573eb554`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b38159b281aa625dbe60e4a14faa75c762e40c7b8b532b3317e7d6af4cc6dc0`  
		Last Modified: Wed, 15 May 2019 23:32:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:db6e7bda67ea88efb00ba4ad82cb72dfee8938935914ae0948f6af523d398ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:83382f69f154c6d09a6bf05622513ad37906cad52da74d4d8c799d2bc3b7f913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bb20373d81e6601750192197931de1496fed565dfd4a35ba2ebd050de5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:23 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:46:58 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:46:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:47:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:47:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:47:44 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:45 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:47:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9104943e23ec4f42cc42d4b1e5c51a9b80d86791854fde64e1ade9fb468e17f9`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae510462589d8cdc44d2c6a3b1267f0e3874efc2916f6ed6cef9f29c25c8bb67`  
		Last Modified: Thu, 16 May 2019 00:48:46 GMT  
		Size: 74.3 MB (74336931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23646ae61e9341bbbd0601b48b1a58d2198c7069c7d46554d7ecdbf51b419a`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c301b916a4e0d381e7c3b3f6e80d04d0afec7a94d44a986bc1d43a645cb74cc`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:34a7ee3f52becbd1b8947f16c02b52c6e9f3dfbd101d0953c1df7421f188c5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107083267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f256951026db34f1432226bfacc9f3f34afa1497e862d900413d3258a64fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:51:33 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:51:34 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:51:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:52:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:52:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:52:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:18 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:52:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac1d85e46e6a58047ce8cafb0e9cd8087bede9b95ce1e5127ff6603e28e79`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693148785c5e0724d9368261d10ca53d56137766aa0ed33b46c19db837e4bdb9`  
		Last Modified: Thu, 16 May 2019 00:59:27 GMT  
		Size: 73.2 MB (73249349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c668e859e1269ecf88a6dabfc552029baa5e0ad77d537305eae5080653530d5`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf4472df7bc3ef428b1ebf7fa8f63403037b1ddb1be421926e8607a85509fff`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2f4e89d2af187885e7b1359cf0bf0337ea0114fbb31fb7052b062c6732f505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119153967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4dbdfd72e358e62aa30ede0490b8848da32c6e8434ed63d4eb10575bf9a78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:14 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:41:30 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:41:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:43:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:43:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:43:25 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:43:40 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd491ba73457f25531c69fc10f25207fb1ac7f5901bea97c61727df1bdd857c`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d9a6121c80b4ab5c8c776d3e7c22f95b2f36e93b0a0a97dd6deb1251014a2`  
		Last Modified: Thu, 16 May 2019 00:45:02 GMT  
		Size: 77.3 MB (77260760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590ae0a85f0a8ebe0e4777564149a083c6bd172a66e92a45e9178db59f79cfa7`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6e2a60ee063f990c9dff12c518a91a419161774fb86e09f9d3908b44df0cbb`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:db6e7bda67ea88efb00ba4ad82cb72dfee8938935914ae0948f6af523d398ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:83382f69f154c6d09a6bf05622513ad37906cad52da74d4d8c799d2bc3b7f913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bb20373d81e6601750192197931de1496fed565dfd4a35ba2ebd050de5ca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:43:23 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:46:58 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:46:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:47:44 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:47:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:47:44 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:47:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:47:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:45 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:47:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9104943e23ec4f42cc42d4b1e5c51a9b80d86791854fde64e1ade9fb468e17f9`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae510462589d8cdc44d2c6a3b1267f0e3874efc2916f6ed6cef9f29c25c8bb67`  
		Last Modified: Thu, 16 May 2019 00:48:46 GMT  
		Size: 74.3 MB (74336931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec23646ae61e9341bbbd0601b48b1a58d2198c7069c7d46554d7ecdbf51b419a`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c301b916a4e0d381e7c3b3f6e80d04d0afec7a94d44a986bc1d43a645cb74cc`  
		Last Modified: Thu, 16 May 2019 00:48:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:34a7ee3f52becbd1b8947f16c02b52c6e9f3dfbd101d0953c1df7421f188c5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107083267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f256951026db34f1432226bfacc9f3f34afa1497e862d900413d3258a64fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:51:33 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:51:34 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:51:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:52:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:52:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:52:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:18 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:52:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac1d85e46e6a58047ce8cafb0e9cd8087bede9b95ce1e5127ff6603e28e79`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693148785c5e0724d9368261d10ca53d56137766aa0ed33b46c19db837e4bdb9`  
		Last Modified: Thu, 16 May 2019 00:59:27 GMT  
		Size: 73.2 MB (73249349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c668e859e1269ecf88a6dabfc552029baa5e0ad77d537305eae5080653530d5`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf4472df7bc3ef428b1ebf7fa8f63403037b1ddb1be421926e8607a85509fff`  
		Last Modified: Thu, 16 May 2019 00:59:02 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6d2f4e89d2af187885e7b1359cf0bf0337ea0114fbb31fb7052b062c6732f505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119153967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4dbdfd72e358e62aa30ede0490b8848da32c6e8434ed63d4eb10575bf9a78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:11:14 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 May 2019 00:41:30 GMT
ENV MARIADB_VERSION=1:10.3.15+maria~bionic
# Thu, 16 May 2019 00:41:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 May 2019 00:43:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 May 2019 00:43:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 May 2019 00:43:25 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 16 May 2019 00:43:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 May 2019 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:43:40 GMT
EXPOSE 3306
# Thu, 16 May 2019 00:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd491ba73457f25531c69fc10f25207fb1ac7f5901bea97c61727df1bdd857c`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d9a6121c80b4ab5c8c776d3e7c22f95b2f36e93b0a0a97dd6deb1251014a2`  
		Last Modified: Thu, 16 May 2019 00:45:02 GMT  
		Size: 77.3 MB (77260760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590ae0a85f0a8ebe0e4777564149a083c6bd172a66e92a45e9178db59f79cfa7`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6e2a60ee063f990c9dff12c518a91a419161774fb86e09f9d3908b44df0cbb`  
		Last Modified: Thu, 16 May 2019 00:44:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:rc`

```console
$ docker pull mariadb@sha256:13bde6b21074f1e57f0ada6a196a13789d6a90e0ad92a6a757ef6eb1975b9cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:rc` - linux; amd64

```console
$ docker pull mariadb@sha256:ebf991956febd9bd2d445020a959fcc0d5b176dc40657c33323e39436d432fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115445512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3edbb60f1111f79c2552e6da9e7403954fd9d042f7fd30df9220b2f7c3516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:42:34 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:19:44 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:19:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:20:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:20:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:20:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:20:28 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:20:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4189206ef632ac1a84f7ad7a96f080e4f8f2cebab35488d670de8e9f30cccb07`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1747b9129756936d08cd668dd31e0bc04eccc91e8857cc865dab4f3391bf6d0c`  
		Last Modified: Thu, 23 May 2019 21:21:23 GMT  
		Size: 77.9 MB (77928435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e507fb89c8c32a15443b8b5d7d9dd481f823d3a1a5c6a9c3c53626302d943`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c14754d0f6d35a254ebfbeb5de205141a928050f3287d30f4fb6dfba8a003b`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b80f61be1b87c46116cf9273152fbea008ed6128688cc3ac952999af155d7179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110678747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a449b1209c5d5418ddf2e65fc38539702679eda9492e4e631f69bd73fdd695dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:50:35 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:39:37 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:39:39 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:40:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:40:16 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:40:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:40:19 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:40:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1583e3cc4214bea72012cb6e9f31fd7027c1126d198ed0c1e2748fd6eb3238d`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110dd2189b9080d5026fa942fea3517dd399b91b98199aeaac12816934985d3`  
		Last Modified: Thu, 23 May 2019 21:41:16 GMT  
		Size: 76.8 MB (76844823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28935a24ee2af758e0956fb480d4b204c5866f15a48c56afbbfb588c004f2bf0`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaebbb400b9e6a8b9be797c2c894ef8a9bcc30701db6740a29f951b47ad785`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5ade85809ab986f923c799189d93e19d0249dee3e12287d23bcd8a493a5cd2cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122665242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d0c47e50c9267a05afc5c84ce87142c74d5d1e5adeb3a2158b959fa39e95bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:09:30 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 15 May 2019 23:09:32 GMT
ENV MARIADB_VERSION=1:10.4.4+maria~bionic
# Wed, 15 May 2019 23:09:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:10:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:10:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:10:57 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:06 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:11:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b13bfe97bd3223aab4448af75b33de8250ec884c240694fffbb6fc9b12a7fc`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dadf08713204e3dae87d8a823a21988b061f6d4b842d1092fd93ce9abe2a2c9`  
		Last Modified: Wed, 15 May 2019 23:29:58 GMT  
		Size: 80.8 MB (80772034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040ca1c8014de7d32ce5124dd941bd3e4932c6c468fb29330cd9a20fe165ffcd`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb498d9c09aa4329343dbb3fda7cee81317e86ee48fb90fc194e0b2962e4eb69`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:rc-bionic`

```console
$ docker pull mariadb@sha256:13bde6b21074f1e57f0ada6a196a13789d6a90e0ad92a6a757ef6eb1975b9cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:rc-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:ebf991956febd9bd2d445020a959fcc0d5b176dc40657c33323e39436d432fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115445512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3edbb60f1111f79c2552e6da9e7403954fd9d042f7fd30df9220b2f7c3516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 22:42:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 22:42:22 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 22:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:42:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 22:42:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 22:42:34 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:19:44 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:19:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:20:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:20:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:20:27 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:20:28 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:20:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62701212b1fdd5526620057075d9edf8ae2158fae5dcb54c4f0eac12372049`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6f41348efabbee383038e44c62ec2dba25fed9093e979c57e33e2127d2a84`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 4.8 MB (4804241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdaf925d088ad207faedb351807b4c3f29fb5efa90e3dc32c119ecee1a9a839`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 863.5 KB (863501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba8f10417bdbfa626929e4bd6d949d6f05d528db2e7f6f7262e052751c47ee`  
		Last Modified: Wed, 15 May 2019 22:47:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3806bed5c6919b13da417bb65b16ec1c6ef2e77b2be8e2b23e8c8c3c7a907ff8`  
		Last Modified: Wed, 15 May 2019 22:47:48 GMT  
		Size: 3.0 MB (2961336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aae6d0fc18ee7fb83c13f5f4bf1d7487e65121dccf95c0808e47639d24a483`  
		Last Modified: Wed, 15 May 2019 22:47:46 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4189206ef632ac1a84f7ad7a96f080e4f8f2cebab35488d670de8e9f30cccb07`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1747b9129756936d08cd668dd31e0bc04eccc91e8857cc865dab4f3391bf6d0c`  
		Last Modified: Thu, 23 May 2019 21:21:23 GMT  
		Size: 77.9 MB (77928435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91e507fb89c8c32a15443b8b5d7d9dd481f823d3a1a5c6a9c3c53626302d943`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c14754d0f6d35a254ebfbeb5de205141a928050f3287d30f4fb6dfba8a003b`  
		Last Modified: Thu, 23 May 2019 21:21:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b80f61be1b87c46116cf9273152fbea008ed6128688cc3ac952999af155d7179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110678747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a449b1209c5d5418ddf2e65fc38539702679eda9492e4e631f69bd73fdd695dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:49:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 May 2019 00:49:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:49:41 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 00:50:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:50:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 May 2019 00:50:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 May 2019 00:50:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 May 2019 00:50:35 GMT
ENV MARIADB_MAJOR=10.4
# Thu, 23 May 2019 21:39:37 GMT
ENV MARIADB_VERSION=1:10.4.5+maria~bionic
# Thu, 23 May 2019 21:39:39 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 May 2019 21:40:14 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 May 2019 21:40:16 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 May 2019 21:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Thu, 23 May 2019 21:40:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 May 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:40:19 GMT
EXPOSE 3306
# Thu, 23 May 2019 21:40:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b425ae17c2ff8633ae556e7b893f1a72122d256be441d9e99b0a53061cf601c9`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e862902688b6dbb6776f6ed1fc30ba00c61d8d2ccee08536c5dfabb132d82e`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 4.4 MB (4390100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307f49aaf70f91b346f23915164eca121530565e1eaa824cc29d5a85bbbf82fa`  
		Last Modified: Thu, 16 May 2019 00:58:13 GMT  
		Size: 830.6 KB (830623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f9c65b99eda2c5a9253034122d92c191c9bf91201b6947a445c04aac9a8232`  
		Last Modified: Thu, 16 May 2019 00:58:12 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f3956e2c3091b63e8922bd4136cb9b966ccfb42f99780f0e1470be23e57e5d`  
		Last Modified: Thu, 16 May 2019 00:58:14 GMT  
		Size: 2.7 MB (2705398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9404cc89e32bd31b48e6bbe2ad5f3ac9f78be76003b762d913dc132b9e7d75d`  
		Last Modified: Thu, 16 May 2019 00:58:11 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1583e3cc4214bea72012cb6e9f31fd7027c1126d198ed0c1e2748fd6eb3238d`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110dd2189b9080d5026fa942fea3517dd399b91b98199aeaac12816934985d3`  
		Last Modified: Thu, 23 May 2019 21:41:16 GMT  
		Size: 76.8 MB (76844823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28935a24ee2af758e0956fb480d4b204c5866f15a48c56afbbfb588c004f2bf0`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaebbb400b9e6a8b9be797c2c894ef8a9bcc30701db6740a29f951b47ad785`  
		Last Modified: Thu, 23 May 2019 21:40:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5ade85809ab986f923c799189d93e19d0249dee3e12287d23bcd8a493a5cd2cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122665242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d0c47e50c9267a05afc5c84ce87142c74d5d1e5adeb3a2158b959fa39e95bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:07:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 15 May 2019 23:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:07 GMT
ENV GOSU_VERSION=1.10
# Wed, 15 May 2019 23:08:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 15 May 2019 23:08:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 23:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:09:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 15 May 2019 23:09:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 15 May 2019 23:09:30 GMT
ENV MARIADB_MAJOR=10.4
# Wed, 15 May 2019 23:09:32 GMT
ENV MARIADB_VERSION=1:10.4.4+maria~bionic
# Wed, 15 May 2019 23:09:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 15 May 2019 23:10:52 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 15 May 2019 23:10:56 GMT
VOLUME [/var/lib/mysql]
# Wed, 15 May 2019 23:10:57 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Wed, 15 May 2019 23:11:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 15 May 2019 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 May 2019 23:11:06 GMT
EXPOSE 3306
# Wed, 15 May 2019 23:11:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69ca156d731e31800e6b031385fc851a50668133a2d9335e8fe789a8b745767`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34502880a24395b9c124b66fbb2d08537d907ba627e3326bb1a646a41e6931b`  
		Last Modified: Wed, 15 May 2019 23:29:35 GMT  
		Size: 5.6 MB (5625315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560607ca919b599c7809c5c31fb0df1cad460cdd8c67735d3351007fd06cfb4`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 832.5 KB (832543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bc4b05192c1f2ea81daad682ce19614952746fd1de844fece0f02826fa2477`  
		Last Modified: Wed, 15 May 2019 23:29:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb30a07df05489f61ec79becb7abc4b05989414424818b1ba4023c549865c32`  
		Last Modified: Wed, 15 May 2019 23:29:31 GMT  
		Size: 2.8 MB (2843075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ec91f628ce1ba9f005f07744f27f866959399c134c4d28874c779973173b1`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 26.5 KB (26549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b13bfe97bd3223aab4448af75b33de8250ec884c240694fffbb6fc9b12a7fc`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dadf08713204e3dae87d8a823a21988b061f6d4b842d1092fd93ce9abe2a2c9`  
		Last Modified: Wed, 15 May 2019 23:29:58 GMT  
		Size: 80.8 MB (80772034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040ca1c8014de7d32ce5124dd941bd3e4932c6c468fb29330cd9a20fe165ffcd`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb498d9c09aa4329343dbb3fda7cee81317e86ee48fb90fc194e0b2962e4eb69`  
		Last Modified: Wed, 15 May 2019 23:29:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
