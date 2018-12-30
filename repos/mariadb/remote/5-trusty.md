## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:6c2292dcd8e1b9bb0fae147ba4c771ff2560359c8ad5b3525d1c27df60164172
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
$ docker pull mariadb@sha256:91a3208b16b0ab29265990b90ee59ac6a0ddc8d8fd8e45d340b7ba25a2130afc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114577519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36617e6466152a277803a9618b26be6616f84cab2ae1a82623b0757abc40ddd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 12:18:29 GMT
ADD file:7e100c39c4fa5ed3f84fa30f044571c7a836bb0ce58f7090bab50c1b3c8ff941 in / 
# Sat, 29 Dec 2018 12:18:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:18:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:18:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:18:33 GMT
CMD ["/bin/bash"]
# Sun, 30 Dec 2018 04:32:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sun, 30 Dec 2018 04:32:31 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:32:31 GMT
ENV GOSU_VERSION=1.10
# Sun, 30 Dec 2018 04:32:44 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 30 Dec 2018 04:32:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 30 Dec 2018 04:33:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:33:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sun, 30 Dec 2018 04:33:03 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sun, 30 Dec 2018 04:33:03 GMT
ENV MARIADB_MAJOR=5.5
# Sun, 30 Dec 2018 04:33:04 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Sun, 30 Dec 2018 04:33:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sun, 30 Dec 2018 04:33:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sun, 30 Dec 2018 04:33:21 GMT
VOLUME [/var/lib/mysql]
# Sun, 30 Dec 2018 04:33:21 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sun, 30 Dec 2018 04:33:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 30 Dec 2018 04:33:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 04:33:22 GMT
EXPOSE 3306
# Sun, 30 Dec 2018 04:33:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b17f7c2ca03610c8a99755e722fbf570bee1ec2a9a8720a1f4c68fe8ed69f2ae`  
		Last Modified: Mon, 24 Dec 2018 15:13:44 GMT  
		Size: 64.9 MB (64852085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36c7c7af2ed5896799a361927a796ec3f914f9a40f513e571422cd9032166c2`  
		Last Modified: Sat, 29 Dec 2018 12:20:42 GMT  
		Size: 64.9 KB (64861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd336882416197cabbcac5f3012186ce64c34bb428a533d3e15a6d2ae47e384c`  
		Last Modified: Sat, 29 Dec 2018 12:20:43 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4940aa2be35daf5692b8fd819c87bce748204c4a851a2f23cf303fdd66eb8980`  
		Last Modified: Sat, 29 Dec 2018 12:20:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022b4e80383121386c8c37c388102fa9a6be6e8c225998d7f4ab16e1feb51b3`  
		Last Modified: Sun, 30 Dec 2018 04:34:12 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca5e194a1a597fc63815565d996f52fe89441d12a730f47d4b555d47d64c711`  
		Last Modified: Sun, 30 Dec 2018 04:34:12 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aca4b42355159273ecfc7923d18e81782a2066122bbd0ec3291d7f7418d75cd`  
		Last Modified: Sun, 30 Dec 2018 04:34:12 GMT  
		Size: 1.6 MB (1553090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc6011b197960c2dd1eb8928144b66ca8aa4469057795963a71f78936d09f35`  
		Last Modified: Sun, 30 Dec 2018 04:34:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd436f47c372f1cd302671355afd38c0cb951faaad5ec262f0b952dc15ab85ff`  
		Last Modified: Sun, 30 Dec 2018 04:34:13 GMT  
		Size: 4.2 MB (4248932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204b9df0d9b2995a22c11d069098081419b487af67b9d744500cf8b094af3a58`  
		Last Modified: Sun, 30 Dec 2018 04:34:10 GMT  
		Size: 25.4 KB (25438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b81a22c9a6a1a082e6d54e4ae0acceeaa9d17d528535a3d3e5c50cd0f6e74b1`  
		Last Modified: Sun, 30 Dec 2018 04:34:10 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a9d62c856f3307814e1d6f88a436d89fadcb1c6d619eaa1e1bfee8bf708729`  
		Last Modified: Sun, 30 Dec 2018 04:34:21 GMT  
		Size: 43.8 MB (43827203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e352794e555a0732d046131686e8dd2641ba6abdfa0db62751da0c1dcf0e0eba`  
		Last Modified: Sun, 30 Dec 2018 04:34:10 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a24e53392d1aa46310aa051cf6b6cc6d3a9845cb265466ebfc96b47d40649b`  
		Last Modified: Sun, 30 Dec 2018 04:34:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:ca75c39069c1d87502924785be5936270aecfc4e87e507e8ee1c5852bf628f33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111931877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e755d41d80f2918e2fcf0d1f460a9dc4e87ad7ba71201e9486d8dbad490373f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:58 GMT
ADD file:189ffb69d40e3820988b5e69cd39090f6f4757e08bd70d6feb7c778224ea929d in / 
# Sat, 29 Dec 2018 09:22:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:22:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:22:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:22:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:22:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 10:22:28 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:22:30 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 10:23:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 10:23:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 10:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:24:14 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 10:24:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 10:24:22 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 29 Dec 2018 10:24:24 GMT
ENV MARIADB_VERSION=5.5.62+maria-1~trusty
# Sat, 29 Dec 2018 10:24:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 10:25:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 10:25:24 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 10:25:25 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 10:25:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 10:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:25:35 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 10:25:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:cbc8b48abfbf0b4e0f7518ba58f4295f37c21bfe063622d1038e7763764861f7`  
		Last Modified: Mon, 24 Dec 2018 15:13:42 GMT  
		Size: 69.8 MB (69813317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b2de285b3800f7259f32cada5e791e9e8502419931c2d9837d64f3b3dd5ef0`  
		Last Modified: Sat, 29 Dec 2018 09:25:37 GMT  
		Size: 63.4 KB (63426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf780594319846a1d1e1fef4007e229f558dd8b2c953fc43215f0da3d1823f7`  
		Last Modified: Sat, 29 Dec 2018 09:25:37 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df81ca9cb9440af49cadee64d2b5d71f2beaa4fb134e6eb0cdd7d4d93f27f3e`  
		Last Modified: Sat, 29 Dec 2018 09:25:38 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbd0f8cf3352df2778621f65cab97f008735aca55ffc86bbd60084669c882c9`  
		Last Modified: Sat, 29 Dec 2018 10:30:42 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb4332025fcfb28485dcfeb3d897e00f42dc39471085b70172519a9d0253f88`  
		Last Modified: Sat, 29 Dec 2018 10:30:37 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffb38d9eb2426fb97409e7496d4df6d280c537b5067ab3493de10195d9ae0df`  
		Last Modified: Sat, 29 Dec 2018 10:30:37 GMT  
		Size: 1.5 MB (1546172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fd9e39916a9fc79180e6e64bb653dff93028abfa9b895c3340ebfcbeb0db6c`  
		Last Modified: Sat, 29 Dec 2018 10:30:37 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791546c4ffb702473115b464424ab62eb3150addf9a37d3981174e111de1475f`  
		Last Modified: Sat, 29 Dec 2018 10:30:37 GMT  
		Size: 4.3 MB (4288299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368a50305ffb2d5709e65ccbcaec0540bf7cbf02e44a1482dd28722b5642f07a`  
		Last Modified: Sat, 29 Dec 2018 10:30:26 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d76dfa14332eb23dd27dac732bbb70b769f31a9f99be34c69f5878b6035c6`  
		Last Modified: Sat, 29 Dec 2018 10:30:27 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653ee7c565db33aa83945ca91cbdba5d2386b9778095c40a511a2ee850e03229`  
		Last Modified: Sat, 29 Dec 2018 10:30:37 GMT  
		Size: 36.2 MB (36189237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d31238865d8475ae2d17611fe1d652528b3927b17b5a1470273f0985a96935`  
		Last Modified: Sat, 29 Dec 2018 10:30:27 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ede3f5f4567f3dc2cc12f721a45f0fadb86098406d9665b2e77a35ba3f21861`  
		Last Modified: Sat, 29 Dec 2018 10:30:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
