<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.36`](#mariadb10036)
-	[`mariadb:10.0.36-xenial`](#mariadb10036-xenial)
-	[`mariadb:10.0-xenial`](#mariadb100-xenial)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.36`](#mariadb10136)
-	[`mariadb:10.1.36-bionic`](#mariadb10136-bionic)
-	[`mariadb:10.1-bionic`](#mariadb101-bionic)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.18`](#mariadb10218)
-	[`mariadb:10.2.18-bionic`](#mariadb10218-bionic)
-	[`mariadb:10.2-bionic`](#mariadb102-bionic)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.10`](#mariadb10310)
-	[`mariadb:10.3.10-bionic`](#mariadb10310-bionic)
-	[`mariadb:10.3-bionic`](#mariadb103-bionic)
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
$ docker pull mariadb@sha256:9d443337dfbb2a34583ed7c968cde6115ce1b10630530ff1f0f5c7f1e6f0a76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:54b616679cbcaa551e5c88af274f380077fc423ed0758def982ff835c33d865c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67238b4c1da06cdaec89d5728aaaa72b762304bffcc45b6bd7110503c9528111`
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
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 01:37:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:37:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:37:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:37:42 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:37:43 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:37:44 GMT
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
	-	`sha256:dea457cf24a89b390bf869372553a84b89ed0dce5d7b91b15a9ed489b229917b`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ebff5731d9c85a9c4f07f9f0ee5555b109317261a326de517e01464cc614`  
		Last Modified: Fri, 19 Oct 2018 01:42:05 GMT  
		Size: 74.3 MB (74256081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8171c3b818425eae3afdc2acefbea165e57a827965577a16b797993c3ed05959`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c72b0d0b51671a7cdc6d835575eb4a4a36b2f7a63e5a947c38f919ed2c2567`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
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
$ docker pull mariadb@sha256:21311ad579962b26b03119f2d2c6d61082311e36accb8fa3f7386e1a0b52e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:2df3f140097b0bc0a516fe5bf006e37c74a7c92686492cd51f1ccdee0afc8b19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114897184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9269268f742a9b0c201664337aa21b79d1345c15c9b494e1345ad707589d49`
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
# Fri, 19 Oct 2018 01:40:00 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 01:40:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:40:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:40:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:40:39 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:40:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:40:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:40:40 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:40:40 GMT
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
	-	`sha256:9b2fec8e2563254f7deb691a7b388bed14c3adad3ff2ab2a51d489a23ee91b98`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bc46648a90d136882d135678bcb290f1a689a169c463e8f9a06c81ead8386a`  
		Last Modified: Fri, 19 Oct 2018 01:46:53 GMT  
		Size: 63.3 MB (63349118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75523da0ccb7b96556d84a9bf19f8b210bcdbb00a0bd4ea8ffe75a2f95e04e69`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ef53d9c149460d18a10ebc3dc7ccec31f3f3c143e786d73924b0c3e45e5858`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cd095bfe3e9cec7d3a2b31d928e59a966091b2bf35f4a43a5658e1d1f5950b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99038496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f86b49716f0441638cbd8b40d89a0fed73214dbb5aaf642aa9f5aa2bb92f61e`
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
# Fri, 19 Oct 2018 13:11:07 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 13:11:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:13:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:13:18 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:13:21 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:13:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:13:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:13:31 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:13:33 GMT
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
	-	`sha256:8941c676c4d0a729b1f3079b06e6540d95763445202847b88708621f0f69542c`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88518608af100d1c231d617dbc450846d52d9a145efc1ee60a871c463f8ebe7b`  
		Last Modified: Fri, 19 Oct 2018 13:18:52 GMT  
		Size: 52.4 MB (52366914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c35eeabcf38da4b10de6797d3bcea1137c000ee5f28fa8b39789274f7ecc06d`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faba2ca767837cdfc40cb1140e0df3886dd105aa447bdff6f38fcde6f270c3ac`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:09173c9aa2c4313e529b25f88bb107163a032ca919471eaadd514981524ff9ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113811384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a643db00b6e81228d6fb38661f17c16c681d6852d3d89bed52607aea4f7dd4c0`
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
# Fri, 19 Oct 2018 13:52:27 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 13:52:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:53:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:53:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:53:11 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:53:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:53:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:53:12 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:53:12 GMT
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
	-	`sha256:a7d6f95728a7d8d1b7cb3c285e8b10ac17fe9e9605c9e51ec22b98fe2f7b37b2`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3b58d64eb535560d422bad69f114e23fa7479444ed6cba328270174e47cf34`  
		Last Modified: Fri, 19 Oct 2018 13:54:42 GMT  
		Size: 61.9 MB (61927469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe4de74ada8022e6a6b4a89b2f5f2d4b5db55f360a3d66b11ec70f02225ffdf`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943ebbc96940327f566c03124055ddbb39c5baa2f93b8f26e4df7392016474ed`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:94272a884ac175622b1b5787abdb5318a1b8ffcf93e91c4ae50e9ce476ffb6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108287799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55df16ed47be9388c63ad4e31d1ae0162dea0925106505c3c1fc28bb8415b5dc`
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
# Fri, 19 Oct 2018 10:47:16 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 10:47:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:48:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:48:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:48:47 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:48:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:48:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:48:52 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:48:53 GMT
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
	-	`sha256:18a57b80791a9e477864ba620392b7d47d4e9c2315d02656e2bf8819478be328`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78653f3cd0e2b9fdd768bd3125288b961c1bad1b4d941e3504e67221e9f306f8`  
		Last Modified: Fri, 19 Oct 2018 10:57:58 GMT  
		Size: 54.6 MB (54589294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b74c9268cc3442e34cfac00e33e4325c9938cb1f714c746f9f35de8d9ececf`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b763d6da841a46bb149846d7613c368f0834c10871d690139caad50f18ebb0dd`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.36`

```console
$ docker pull mariadb@sha256:21311ad579962b26b03119f2d2c6d61082311e36accb8fa3f7386e1a0b52e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.36` - linux; amd64

```console
$ docker pull mariadb@sha256:2df3f140097b0bc0a516fe5bf006e37c74a7c92686492cd51f1ccdee0afc8b19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114897184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9269268f742a9b0c201664337aa21b79d1345c15c9b494e1345ad707589d49`
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
# Fri, 19 Oct 2018 01:40:00 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 01:40:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:40:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:40:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:40:39 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:40:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:40:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:40:40 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:40:40 GMT
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
	-	`sha256:9b2fec8e2563254f7deb691a7b388bed14c3adad3ff2ab2a51d489a23ee91b98`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bc46648a90d136882d135678bcb290f1a689a169c463e8f9a06c81ead8386a`  
		Last Modified: Fri, 19 Oct 2018 01:46:53 GMT  
		Size: 63.3 MB (63349118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75523da0ccb7b96556d84a9bf19f8b210bcdbb00a0bd4ea8ffe75a2f95e04e69`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ef53d9c149460d18a10ebc3dc7ccec31f3f3c143e786d73924b0c3e45e5858`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cd095bfe3e9cec7d3a2b31d928e59a966091b2bf35f4a43a5658e1d1f5950b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99038496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f86b49716f0441638cbd8b40d89a0fed73214dbb5aaf642aa9f5aa2bb92f61e`
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
# Fri, 19 Oct 2018 13:11:07 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 13:11:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:13:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:13:18 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:13:21 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:13:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:13:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:13:31 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:13:33 GMT
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
	-	`sha256:8941c676c4d0a729b1f3079b06e6540d95763445202847b88708621f0f69542c`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88518608af100d1c231d617dbc450846d52d9a145efc1ee60a871c463f8ebe7b`  
		Last Modified: Fri, 19 Oct 2018 13:18:52 GMT  
		Size: 52.4 MB (52366914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c35eeabcf38da4b10de6797d3bcea1137c000ee5f28fa8b39789274f7ecc06d`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faba2ca767837cdfc40cb1140e0df3886dd105aa447bdff6f38fcde6f270c3ac`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36` - linux; 386

```console
$ docker pull mariadb@sha256:09173c9aa2c4313e529b25f88bb107163a032ca919471eaadd514981524ff9ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113811384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a643db00b6e81228d6fb38661f17c16c681d6852d3d89bed52607aea4f7dd4c0`
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
# Fri, 19 Oct 2018 13:52:27 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 13:52:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:53:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:53:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:53:11 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:53:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:53:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:53:12 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:53:12 GMT
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
	-	`sha256:a7d6f95728a7d8d1b7cb3c285e8b10ac17fe9e9605c9e51ec22b98fe2f7b37b2`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3b58d64eb535560d422bad69f114e23fa7479444ed6cba328270174e47cf34`  
		Last Modified: Fri, 19 Oct 2018 13:54:42 GMT  
		Size: 61.9 MB (61927469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe4de74ada8022e6a6b4a89b2f5f2d4b5db55f360a3d66b11ec70f02225ffdf`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943ebbc96940327f566c03124055ddbb39c5baa2f93b8f26e4df7392016474ed`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36` - linux; ppc64le

```console
$ docker pull mariadb@sha256:94272a884ac175622b1b5787abdb5318a1b8ffcf93e91c4ae50e9ce476ffb6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108287799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55df16ed47be9388c63ad4e31d1ae0162dea0925106505c3c1fc28bb8415b5dc`
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
# Fri, 19 Oct 2018 10:47:16 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 10:47:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:48:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:48:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:48:47 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:48:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:48:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:48:52 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:48:53 GMT
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
	-	`sha256:18a57b80791a9e477864ba620392b7d47d4e9c2315d02656e2bf8819478be328`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78653f3cd0e2b9fdd768bd3125288b961c1bad1b4d941e3504e67221e9f306f8`  
		Last Modified: Fri, 19 Oct 2018 10:57:58 GMT  
		Size: 54.6 MB (54589294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b74c9268cc3442e34cfac00e33e4325c9938cb1f714c746f9f35de8d9ececf`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b763d6da841a46bb149846d7613c368f0834c10871d690139caad50f18ebb0dd`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.36-xenial`

```console
$ docker pull mariadb@sha256:21311ad579962b26b03119f2d2c6d61082311e36accb8fa3f7386e1a0b52e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.36-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:2df3f140097b0bc0a516fe5bf006e37c74a7c92686492cd51f1ccdee0afc8b19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114897184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9269268f742a9b0c201664337aa21b79d1345c15c9b494e1345ad707589d49`
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
# Fri, 19 Oct 2018 01:40:00 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 01:40:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:40:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:40:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:40:39 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:40:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:40:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:40:40 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:40:40 GMT
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
	-	`sha256:9b2fec8e2563254f7deb691a7b388bed14c3adad3ff2ab2a51d489a23ee91b98`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bc46648a90d136882d135678bcb290f1a689a169c463e8f9a06c81ead8386a`  
		Last Modified: Fri, 19 Oct 2018 01:46:53 GMT  
		Size: 63.3 MB (63349118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75523da0ccb7b96556d84a9bf19f8b210bcdbb00a0bd4ea8ffe75a2f95e04e69`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ef53d9c149460d18a10ebc3dc7ccec31f3f3c143e786d73924b0c3e45e5858`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cd095bfe3e9cec7d3a2b31d928e59a966091b2bf35f4a43a5658e1d1f5950b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99038496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f86b49716f0441638cbd8b40d89a0fed73214dbb5aaf642aa9f5aa2bb92f61e`
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
# Fri, 19 Oct 2018 13:11:07 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 13:11:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:13:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:13:18 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:13:21 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:13:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:13:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:13:31 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:13:33 GMT
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
	-	`sha256:8941c676c4d0a729b1f3079b06e6540d95763445202847b88708621f0f69542c`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88518608af100d1c231d617dbc450846d52d9a145efc1ee60a871c463f8ebe7b`  
		Last Modified: Fri, 19 Oct 2018 13:18:52 GMT  
		Size: 52.4 MB (52366914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c35eeabcf38da4b10de6797d3bcea1137c000ee5f28fa8b39789274f7ecc06d`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faba2ca767837cdfc40cb1140e0df3886dd105aa447bdff6f38fcde6f270c3ac`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:09173c9aa2c4313e529b25f88bb107163a032ca919471eaadd514981524ff9ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113811384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a643db00b6e81228d6fb38661f17c16c681d6852d3d89bed52607aea4f7dd4c0`
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
# Fri, 19 Oct 2018 13:52:27 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 13:52:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:53:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:53:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:53:11 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:53:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:53:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:53:12 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:53:12 GMT
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
	-	`sha256:a7d6f95728a7d8d1b7cb3c285e8b10ac17fe9e9605c9e51ec22b98fe2f7b37b2`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3b58d64eb535560d422bad69f114e23fa7479444ed6cba328270174e47cf34`  
		Last Modified: Fri, 19 Oct 2018 13:54:42 GMT  
		Size: 61.9 MB (61927469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe4de74ada8022e6a6b4a89b2f5f2d4b5db55f360a3d66b11ec70f02225ffdf`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943ebbc96940327f566c03124055ddbb39c5baa2f93b8f26e4df7392016474ed`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:94272a884ac175622b1b5787abdb5318a1b8ffcf93e91c4ae50e9ce476ffb6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108287799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55df16ed47be9388c63ad4e31d1ae0162dea0925106505c3c1fc28bb8415b5dc`
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
# Fri, 19 Oct 2018 10:47:16 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 10:47:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:48:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:48:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:48:47 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:48:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:48:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:48:52 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:48:53 GMT
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
	-	`sha256:18a57b80791a9e477864ba620392b7d47d4e9c2315d02656e2bf8819478be328`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78653f3cd0e2b9fdd768bd3125288b961c1bad1b4d941e3504e67221e9f306f8`  
		Last Modified: Fri, 19 Oct 2018 10:57:58 GMT  
		Size: 54.6 MB (54589294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b74c9268cc3442e34cfac00e33e4325c9938cb1f714c746f9f35de8d9ececf`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b763d6da841a46bb149846d7613c368f0834c10871d690139caad50f18ebb0dd`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:21311ad579962b26b03119f2d2c6d61082311e36accb8fa3f7386e1a0b52e7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:2df3f140097b0bc0a516fe5bf006e37c74a7c92686492cd51f1ccdee0afc8b19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114897184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9269268f742a9b0c201664337aa21b79d1345c15c9b494e1345ad707589d49`
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
# Fri, 19 Oct 2018 01:40:00 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 01:40:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:40:38 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:40:39 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:40:39 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:40:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:40:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:40:40 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:40:40 GMT
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
	-	`sha256:9b2fec8e2563254f7deb691a7b388bed14c3adad3ff2ab2a51d489a23ee91b98`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bc46648a90d136882d135678bcb290f1a689a169c463e8f9a06c81ead8386a`  
		Last Modified: Fri, 19 Oct 2018 01:46:53 GMT  
		Size: 63.3 MB (63349118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75523da0ccb7b96556d84a9bf19f8b210bcdbb00a0bd4ea8ffe75a2f95e04e69`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ef53d9c149460d18a10ebc3dc7ccec31f3f3c143e786d73924b0c3e45e5858`  
		Last Modified: Fri, 19 Oct 2018 01:46:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cd095bfe3e9cec7d3a2b31d928e59a966091b2bf35f4a43a5658e1d1f5950b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99038496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f86b49716f0441638cbd8b40d89a0fed73214dbb5aaf642aa9f5aa2bb92f61e`
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
# Fri, 19 Oct 2018 13:11:07 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 13:11:10 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:13:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:13:18 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:13:21 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:13:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:13:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:13:31 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:13:33 GMT
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
	-	`sha256:8941c676c4d0a729b1f3079b06e6540d95763445202847b88708621f0f69542c`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88518608af100d1c231d617dbc450846d52d9a145efc1ee60a871c463f8ebe7b`  
		Last Modified: Fri, 19 Oct 2018 13:18:52 GMT  
		Size: 52.4 MB (52366914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c35eeabcf38da4b10de6797d3bcea1137c000ee5f28fa8b39789274f7ecc06d`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faba2ca767837cdfc40cb1140e0df3886dd105aa447bdff6f38fcde6f270c3ac`  
		Last Modified: Fri, 19 Oct 2018 13:18:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:09173c9aa2c4313e529b25f88bb107163a032ca919471eaadd514981524ff9ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113811384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a643db00b6e81228d6fb38661f17c16c681d6852d3d89bed52607aea4f7dd4c0`
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
# Fri, 19 Oct 2018 13:52:27 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 13:52:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:53:10 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:53:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:53:11 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:53:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:53:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:53:12 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:53:12 GMT
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
	-	`sha256:a7d6f95728a7d8d1b7cb3c285e8b10ac17fe9e9605c9e51ec22b98fe2f7b37b2`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3b58d64eb535560d422bad69f114e23fa7479444ed6cba328270174e47cf34`  
		Last Modified: Fri, 19 Oct 2018 13:54:42 GMT  
		Size: 61.9 MB (61927469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe4de74ada8022e6a6b4a89b2f5f2d4b5db55f360a3d66b11ec70f02225ffdf`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943ebbc96940327f566c03124055ddbb39c5baa2f93b8f26e4df7392016474ed`  
		Last Modified: Fri, 19 Oct 2018 13:54:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:94272a884ac175622b1b5787abdb5318a1b8ffcf93e91c4ae50e9ce476ffb6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108287799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55df16ed47be9388c63ad4e31d1ae0162dea0925106505c3c1fc28bb8415b5dc`
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
# Fri, 19 Oct 2018 10:47:16 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Fri, 19 Oct 2018 10:47:18 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:48:43 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:48:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:48:47 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:48:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:48:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:48:52 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:48:53 GMT
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
	-	`sha256:18a57b80791a9e477864ba620392b7d47d4e9c2315d02656e2bf8819478be328`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78653f3cd0e2b9fdd768bd3125288b961c1bad1b4d941e3504e67221e9f306f8`  
		Last Modified: Fri, 19 Oct 2018 10:57:58 GMT  
		Size: 54.6 MB (54589294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b74c9268cc3442e34cfac00e33e4325c9938cb1f714c746f9f35de8d9ececf`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b763d6da841a46bb149846d7613c368f0834c10871d690139caad50f18ebb0dd`  
		Last Modified: Fri, 19 Oct 2018 10:57:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:8a262b682df65f34ea411a4e2981889d1e4fbc804748f9ef9887c405c0593cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:8ef6493d3aa71511859496374d7f8107c374a4cbcd807de1ee253987aaee5517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118398630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a19c43918a6a060d174a77d6fdf09fdc7310df355d55ac4e27d9a6f24b0765`
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
# Fri, 19 Oct 2018 01:38:32 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 01:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:39:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:39:09 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:39:09 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:39:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:39:10 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:39:10 GMT
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
	-	`sha256:608ac2b9fdac1329896a69a9ed58ce260438fd05a6e3af47e525cf40150a6f57`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b14722f99bc2c02841dd498334dedd30867ce233993150ada697a82fdece92`  
		Last Modified: Fri, 19 Oct 2018 01:45:34 GMT  
		Size: 77.7 MB (77709337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074eaf1652ec05b65425e69b7162b8885bf4a60aa144b7b52355407d8677661c`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec6e5f94f1ee9a8198540b60330bd8f0c93e942ccb9fb753de3981566efd4ef`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:5691869096b127f9c28ff6cfe6d12b65255eb6e152ed166b816e008bc119b699
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110775272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e30f4e143689dbdf3b124531db89f4af12e6479a2c555f9f698f669a659800`
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
# Fri, 19 Oct 2018 13:05:25 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 13:05:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:08:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:08:37 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:08:38 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:08:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:08:44 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:08:46 GMT
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
	-	`sha256:b199aecf48347df9d730426edde8bf3d57c859ec41cb3de21a7c98f998c67c7d`  
		Last Modified: Fri, 19 Oct 2018 13:17:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe6d158307144c7b7fdd8db2597e0d348cb2c4678463ae620b89ea7c2bc57c0`  
		Last Modified: Fri, 19 Oct 2018 13:17:43 GMT  
		Size: 74.0 MB (74001920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b331029b1844501c8ec47915382cd38a78898a58ede10f12492588c78048f55b`  
		Last Modified: Fri, 19 Oct 2018 13:17:16 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f747bc73481071fd27e6e98d6d4ae506f13bf41942b01fdb24c4490983664af`  
		Last Modified: Fri, 19 Oct 2018 13:17:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:608a639716df5a4531d5b22640455bb51357b3d12ec4c79fa8f0a760c4c0a7db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122985491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6077291758bbd914b637d20100e93a9a3dc122b350e9bc65409d6d9b76af09`
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
# Fri, 19 Oct 2018 10:43:11 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 10:43:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:45:12 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:45:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:45:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:45:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:45:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:45:21 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:45:23 GMT
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
	-	`sha256:8e1180295a85a2c89feab56dc4dd67ad2ef940cfb98dd9120036ae8d1b366d6f`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e55b14b845277b98ca63fcf8ba11e0f46c7960d84ac7adfe22397e09bd091e2`  
		Last Modified: Fri, 19 Oct 2018 10:56:49 GMT  
		Size: 78.2 MB (78207582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d004aa5689cf9f5a5cd4d65f9208180e887740ffc4bf68e7f36196c956ae684`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a43514cf8ec1d8b209552ce9bffd4a2eaee5338f4eeb2ca6326b0d4e34123f`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.36`

```console
$ docker pull mariadb@sha256:8a262b682df65f34ea411a4e2981889d1e4fbc804748f9ef9887c405c0593cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.36` - linux; amd64

```console
$ docker pull mariadb@sha256:8ef6493d3aa71511859496374d7f8107c374a4cbcd807de1ee253987aaee5517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118398630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a19c43918a6a060d174a77d6fdf09fdc7310df355d55ac4e27d9a6f24b0765`
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
# Fri, 19 Oct 2018 01:38:32 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 01:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:39:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:39:09 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:39:09 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:39:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:39:10 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:39:10 GMT
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
	-	`sha256:608ac2b9fdac1329896a69a9ed58ce260438fd05a6e3af47e525cf40150a6f57`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b14722f99bc2c02841dd498334dedd30867ce233993150ada697a82fdece92`  
		Last Modified: Fri, 19 Oct 2018 01:45:34 GMT  
		Size: 77.7 MB (77709337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074eaf1652ec05b65425e69b7162b8885bf4a60aa144b7b52355407d8677661c`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec6e5f94f1ee9a8198540b60330bd8f0c93e942ccb9fb753de3981566efd4ef`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.36` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:5691869096b127f9c28ff6cfe6d12b65255eb6e152ed166b816e008bc119b699
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110775272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e30f4e143689dbdf3b124531db89f4af12e6479a2c555f9f698f669a659800`
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
# Fri, 19 Oct 2018 13:05:25 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 13:05:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:08:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:08:37 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:08:38 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:08:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:08:44 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:08:46 GMT
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
	-	`sha256:b199aecf48347df9d730426edde8bf3d57c859ec41cb3de21a7c98f998c67c7d`  
		Last Modified: Fri, 19 Oct 2018 13:17:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe6d158307144c7b7fdd8db2597e0d348cb2c4678463ae620b89ea7c2bc57c0`  
		Last Modified: Fri, 19 Oct 2018 13:17:43 GMT  
		Size: 74.0 MB (74001920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b331029b1844501c8ec47915382cd38a78898a58ede10f12492588c78048f55b`  
		Last Modified: Fri, 19 Oct 2018 13:17:16 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f747bc73481071fd27e6e98d6d4ae506f13bf41942b01fdb24c4490983664af`  
		Last Modified: Fri, 19 Oct 2018 13:17:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.36` - linux; ppc64le

```console
$ docker pull mariadb@sha256:608a639716df5a4531d5b22640455bb51357b3d12ec4c79fa8f0a760c4c0a7db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122985491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6077291758bbd914b637d20100e93a9a3dc122b350e9bc65409d6d9b76af09`
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
# Fri, 19 Oct 2018 10:43:11 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 10:43:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:45:12 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:45:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:45:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:45:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:45:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:45:21 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:45:23 GMT
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
	-	`sha256:8e1180295a85a2c89feab56dc4dd67ad2ef940cfb98dd9120036ae8d1b366d6f`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e55b14b845277b98ca63fcf8ba11e0f46c7960d84ac7adfe22397e09bd091e2`  
		Last Modified: Fri, 19 Oct 2018 10:56:49 GMT  
		Size: 78.2 MB (78207582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d004aa5689cf9f5a5cd4d65f9208180e887740ffc4bf68e7f36196c956ae684`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a43514cf8ec1d8b209552ce9bffd4a2eaee5338f4eeb2ca6326b0d4e34123f`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.36-bionic`

```console
$ docker pull mariadb@sha256:8a262b682df65f34ea411a4e2981889d1e4fbc804748f9ef9887c405c0593cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.36-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:8ef6493d3aa71511859496374d7f8107c374a4cbcd807de1ee253987aaee5517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118398630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a19c43918a6a060d174a77d6fdf09fdc7310df355d55ac4e27d9a6f24b0765`
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
# Fri, 19 Oct 2018 01:38:32 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 01:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:39:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:39:09 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:39:09 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:39:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:39:10 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:39:10 GMT
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
	-	`sha256:608ac2b9fdac1329896a69a9ed58ce260438fd05a6e3af47e525cf40150a6f57`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b14722f99bc2c02841dd498334dedd30867ce233993150ada697a82fdece92`  
		Last Modified: Fri, 19 Oct 2018 01:45:34 GMT  
		Size: 77.7 MB (77709337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074eaf1652ec05b65425e69b7162b8885bf4a60aa144b7b52355407d8677661c`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec6e5f94f1ee9a8198540b60330bd8f0c93e942ccb9fb753de3981566efd4ef`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.36-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:5691869096b127f9c28ff6cfe6d12b65255eb6e152ed166b816e008bc119b699
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110775272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e30f4e143689dbdf3b124531db89f4af12e6479a2c555f9f698f669a659800`
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
# Fri, 19 Oct 2018 13:05:25 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 13:05:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:08:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:08:37 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:08:38 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:08:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:08:44 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:08:46 GMT
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
	-	`sha256:b199aecf48347df9d730426edde8bf3d57c859ec41cb3de21a7c98f998c67c7d`  
		Last Modified: Fri, 19 Oct 2018 13:17:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe6d158307144c7b7fdd8db2597e0d348cb2c4678463ae620b89ea7c2bc57c0`  
		Last Modified: Fri, 19 Oct 2018 13:17:43 GMT  
		Size: 74.0 MB (74001920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b331029b1844501c8ec47915382cd38a78898a58ede10f12492588c78048f55b`  
		Last Modified: Fri, 19 Oct 2018 13:17:16 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f747bc73481071fd27e6e98d6d4ae506f13bf41942b01fdb24c4490983664af`  
		Last Modified: Fri, 19 Oct 2018 13:17:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.36-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:608a639716df5a4531d5b22640455bb51357b3d12ec4c79fa8f0a760c4c0a7db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122985491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6077291758bbd914b637d20100e93a9a3dc122b350e9bc65409d6d9b76af09`
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
# Fri, 19 Oct 2018 10:43:11 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 10:43:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:45:12 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:45:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:45:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:45:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:45:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:45:21 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:45:23 GMT
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
	-	`sha256:8e1180295a85a2c89feab56dc4dd67ad2ef940cfb98dd9120036ae8d1b366d6f`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e55b14b845277b98ca63fcf8ba11e0f46c7960d84ac7adfe22397e09bd091e2`  
		Last Modified: Fri, 19 Oct 2018 10:56:49 GMT  
		Size: 78.2 MB (78207582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d004aa5689cf9f5a5cd4d65f9208180e887740ffc4bf68e7f36196c956ae684`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a43514cf8ec1d8b209552ce9bffd4a2eaee5338f4eeb2ca6326b0d4e34123f`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:8a262b682df65f34ea411a4e2981889d1e4fbc804748f9ef9887c405c0593cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:8ef6493d3aa71511859496374d7f8107c374a4cbcd807de1ee253987aaee5517
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118398630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a19c43918a6a060d174a77d6fdf09fdc7310df355d55ac4e27d9a6f24b0765`
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
# Fri, 19 Oct 2018 01:38:32 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 01:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:39:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:39:09 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:39:09 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:39:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:39:10 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:39:10 GMT
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
	-	`sha256:608ac2b9fdac1329896a69a9ed58ce260438fd05a6e3af47e525cf40150a6f57`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b14722f99bc2c02841dd498334dedd30867ce233993150ada697a82fdece92`  
		Last Modified: Fri, 19 Oct 2018 01:45:34 GMT  
		Size: 77.7 MB (77709337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074eaf1652ec05b65425e69b7162b8885bf4a60aa144b7b52355407d8677661c`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec6e5f94f1ee9a8198540b60330bd8f0c93e942ccb9fb753de3981566efd4ef`  
		Last Modified: Fri, 19 Oct 2018 01:45:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:5691869096b127f9c28ff6cfe6d12b65255eb6e152ed166b816e008bc119b699
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110775272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e30f4e143689dbdf3b124531db89f4af12e6479a2c555f9f698f669a659800`
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
# Fri, 19 Oct 2018 13:05:25 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 13:05:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:08:31 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:08:37 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:08:38 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:08:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:08:44 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:08:46 GMT
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
	-	`sha256:b199aecf48347df9d730426edde8bf3d57c859ec41cb3de21a7c98f998c67c7d`  
		Last Modified: Fri, 19 Oct 2018 13:17:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe6d158307144c7b7fdd8db2597e0d348cb2c4678463ae620b89ea7c2bc57c0`  
		Last Modified: Fri, 19 Oct 2018 13:17:43 GMT  
		Size: 74.0 MB (74001920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b331029b1844501c8ec47915382cd38a78898a58ede10f12492588c78048f55b`  
		Last Modified: Fri, 19 Oct 2018 13:17:16 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f747bc73481071fd27e6e98d6d4ae506f13bf41942b01fdb24c4490983664af`  
		Last Modified: Fri, 19 Oct 2018 13:17:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:608a639716df5a4531d5b22640455bb51357b3d12ec4c79fa8f0a760c4c0a7db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122985491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6077291758bbd914b637d20100e93a9a3dc122b350e9bc65409d6d9b76af09`
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
# Fri, 19 Oct 2018 10:43:11 GMT
ENV MARIADB_VERSION=1:10.1.36+maria-1~bionic
# Fri, 19 Oct 2018 10:43:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:45:12 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:45:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:45:15 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:45:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:45:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:45:21 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:45:23 GMT
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
	-	`sha256:8e1180295a85a2c89feab56dc4dd67ad2ef940cfb98dd9120036ae8d1b366d6f`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e55b14b845277b98ca63fcf8ba11e0f46c7960d84ac7adfe22397e09bd091e2`  
		Last Modified: Fri, 19 Oct 2018 10:56:49 GMT  
		Size: 78.2 MB (78207582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d004aa5689cf9f5a5cd4d65f9208180e887740ffc4bf68e7f36196c956ae684`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a43514cf8ec1d8b209552ce9bffd4a2eaee5338f4eeb2ca6326b0d4e34123f`  
		Last Modified: Fri, 19 Oct 2018 10:56:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:6543f3cd54d93e56ae048935a5938a0f728e202c0e6f93e6d1be4047d06cf490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:783d2e7e1f1c2d7e3c33948fd4379fece05f1c20da340f32836f06b4a152b6e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113942538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f756926078fa66ed64c0940ea4944e91d60b46483b28b241a28974dc3704b5`
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
# Fri, 19 Oct 2018 01:37:55 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 01:37:55 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 01:37:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:38:19 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:38:19 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:38:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:38:20 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:38:21 GMT
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
	-	`sha256:28850b13dae4e0044091c7c275f81a050bf85f97641ed5c16634885111fee4a4`  
		Last Modified: Fri, 19 Oct 2018 01:44:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07944091dbe06806107d66d4d8454ab56128fc8d9cb44227c6d5c008a4a0a15`  
		Last Modified: Fri, 19 Oct 2018 01:44:26 GMT  
		Size: 73.3 MB (73253247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f068808f471605467ced2545b74bbec00e1c6246acf1bef4bf543a35530fdc`  
		Last Modified: Fri, 19 Oct 2018 01:44:10 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6612b14900c029468855f1e083d133d805ab18df2e6082184194a672a964c084`  
		Last Modified: Fri, 19 Oct 2018 01:44:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e62bcfafd896846172d39fba6b389a8c81059a4d3ba89a6679dbd60193e42b78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108999270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f9a6c3f7afa72f911352fd7bc8e43419cfa91796f9779c93761da830219fc5`
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
# Fri, 19 Oct 2018 13:00:56 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 13:00:56 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 13:00:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:04:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:04:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:04:58 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:05:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:05:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:05:06 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:05:08 GMT
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
	-	`sha256:ec3f67b433abf2449844d3cef46127f6aa4ea7a535328c79962b3a64b1f43fb8`  
		Last Modified: Fri, 19 Oct 2018 13:16:01 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a8eaaee063d7d4f9f609528b3eb09e5fa3049d1577929cd6c5ad1ccc879d2a`  
		Last Modified: Fri, 19 Oct 2018 13:16:26 GMT  
		Size: 72.2 MB (72225917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda96e2b319c7bb1422c4a8c29950347f33ea584c53ffca2d593576d91341860`  
		Last Modified: Fri, 19 Oct 2018 13:16:01 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca31525dc2bbb9504368b4078065789efd552cbdad51067e49806a11fdcb7cc9`  
		Last Modified: Fri, 19 Oct 2018 13:16:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bbea285df7d0f5430e43c87d9382cf08123d4bf43c635a6bf90f6413ae4c6652
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120902777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48efd6ee0a0d7d210db69735b6346771e590c547e8c708c8d409f52da225472`
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
# Fri, 19 Oct 2018 10:41:03 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 10:41:04 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 10:41:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:42:50 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:42:52 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:42:53 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:42:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:42:59 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:43:00 GMT
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
	-	`sha256:c1e9960ed330aaec4f5fad5874d655dc1b82f5b22dc9070bd38f83d238a5ec30`  
		Last Modified: Fri, 19 Oct 2018 10:54:35 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08c0a4e6b06772321d4eacced2020794e7024fab9f12cc4def6fd26b8cd1455`  
		Last Modified: Fri, 19 Oct 2018 10:55:34 GMT  
		Size: 76.1 MB (76124866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5b75a9d89789802a63ecfbc610677140efcbc8059e0a1a0723a6ad79ff95cb`  
		Last Modified: Fri, 19 Oct 2018 10:54:34 GMT  
		Size: 2.6 KB (2599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b3af188c2cf00356fc10dc7ed4560a9d77ee3f6532ee7af3c45e0c52dd6dc`  
		Last Modified: Fri, 19 Oct 2018 10:54:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.18`

```console
$ docker pull mariadb@sha256:6543f3cd54d93e56ae048935a5938a0f728e202c0e6f93e6d1be4047d06cf490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.18` - linux; amd64

```console
$ docker pull mariadb@sha256:783d2e7e1f1c2d7e3c33948fd4379fece05f1c20da340f32836f06b4a152b6e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113942538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f756926078fa66ed64c0940ea4944e91d60b46483b28b241a28974dc3704b5`
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
# Fri, 19 Oct 2018 01:37:55 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 01:37:55 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 01:37:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:38:19 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:38:19 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:38:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:38:20 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:38:21 GMT
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
	-	`sha256:28850b13dae4e0044091c7c275f81a050bf85f97641ed5c16634885111fee4a4`  
		Last Modified: Fri, 19 Oct 2018 01:44:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07944091dbe06806107d66d4d8454ab56128fc8d9cb44227c6d5c008a4a0a15`  
		Last Modified: Fri, 19 Oct 2018 01:44:26 GMT  
		Size: 73.3 MB (73253247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f068808f471605467ced2545b74bbec00e1c6246acf1bef4bf543a35530fdc`  
		Last Modified: Fri, 19 Oct 2018 01:44:10 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6612b14900c029468855f1e083d133d805ab18df2e6082184194a672a964c084`  
		Last Modified: Fri, 19 Oct 2018 01:44:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.18` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e62bcfafd896846172d39fba6b389a8c81059a4d3ba89a6679dbd60193e42b78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108999270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f9a6c3f7afa72f911352fd7bc8e43419cfa91796f9779c93761da830219fc5`
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
# Fri, 19 Oct 2018 13:00:56 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 13:00:56 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 13:00:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:04:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:04:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:04:58 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:05:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:05:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:05:06 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:05:08 GMT
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
	-	`sha256:ec3f67b433abf2449844d3cef46127f6aa4ea7a535328c79962b3a64b1f43fb8`  
		Last Modified: Fri, 19 Oct 2018 13:16:01 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a8eaaee063d7d4f9f609528b3eb09e5fa3049d1577929cd6c5ad1ccc879d2a`  
		Last Modified: Fri, 19 Oct 2018 13:16:26 GMT  
		Size: 72.2 MB (72225917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda96e2b319c7bb1422c4a8c29950347f33ea584c53ffca2d593576d91341860`  
		Last Modified: Fri, 19 Oct 2018 13:16:01 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca31525dc2bbb9504368b4078065789efd552cbdad51067e49806a11fdcb7cc9`  
		Last Modified: Fri, 19 Oct 2018 13:16:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.18` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bbea285df7d0f5430e43c87d9382cf08123d4bf43c635a6bf90f6413ae4c6652
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120902777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48efd6ee0a0d7d210db69735b6346771e590c547e8c708c8d409f52da225472`
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
# Fri, 19 Oct 2018 10:41:03 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 10:41:04 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 10:41:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:42:50 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:42:52 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:42:53 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:42:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:42:59 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:43:00 GMT
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
	-	`sha256:c1e9960ed330aaec4f5fad5874d655dc1b82f5b22dc9070bd38f83d238a5ec30`  
		Last Modified: Fri, 19 Oct 2018 10:54:35 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08c0a4e6b06772321d4eacced2020794e7024fab9f12cc4def6fd26b8cd1455`  
		Last Modified: Fri, 19 Oct 2018 10:55:34 GMT  
		Size: 76.1 MB (76124866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5b75a9d89789802a63ecfbc610677140efcbc8059e0a1a0723a6ad79ff95cb`  
		Last Modified: Fri, 19 Oct 2018 10:54:34 GMT  
		Size: 2.6 KB (2599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b3af188c2cf00356fc10dc7ed4560a9d77ee3f6532ee7af3c45e0c52dd6dc`  
		Last Modified: Fri, 19 Oct 2018 10:54:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.18-bionic`

```console
$ docker pull mariadb@sha256:6543f3cd54d93e56ae048935a5938a0f728e202c0e6f93e6d1be4047d06cf490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.18-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:783d2e7e1f1c2d7e3c33948fd4379fece05f1c20da340f32836f06b4a152b6e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113942538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f756926078fa66ed64c0940ea4944e91d60b46483b28b241a28974dc3704b5`
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
# Fri, 19 Oct 2018 01:37:55 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 01:37:55 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 01:37:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:38:19 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:38:19 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:38:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:38:20 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:38:21 GMT
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
	-	`sha256:28850b13dae4e0044091c7c275f81a050bf85f97641ed5c16634885111fee4a4`  
		Last Modified: Fri, 19 Oct 2018 01:44:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07944091dbe06806107d66d4d8454ab56128fc8d9cb44227c6d5c008a4a0a15`  
		Last Modified: Fri, 19 Oct 2018 01:44:26 GMT  
		Size: 73.3 MB (73253247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f068808f471605467ced2545b74bbec00e1c6246acf1bef4bf543a35530fdc`  
		Last Modified: Fri, 19 Oct 2018 01:44:10 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6612b14900c029468855f1e083d133d805ab18df2e6082184194a672a964c084`  
		Last Modified: Fri, 19 Oct 2018 01:44:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.18-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e62bcfafd896846172d39fba6b389a8c81059a4d3ba89a6679dbd60193e42b78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108999270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f9a6c3f7afa72f911352fd7bc8e43419cfa91796f9779c93761da830219fc5`
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
# Fri, 19 Oct 2018 13:00:56 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 13:00:56 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 13:00:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:04:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:04:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:04:58 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:05:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:05:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:05:06 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:05:08 GMT
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
	-	`sha256:ec3f67b433abf2449844d3cef46127f6aa4ea7a535328c79962b3a64b1f43fb8`  
		Last Modified: Fri, 19 Oct 2018 13:16:01 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a8eaaee063d7d4f9f609528b3eb09e5fa3049d1577929cd6c5ad1ccc879d2a`  
		Last Modified: Fri, 19 Oct 2018 13:16:26 GMT  
		Size: 72.2 MB (72225917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda96e2b319c7bb1422c4a8c29950347f33ea584c53ffca2d593576d91341860`  
		Last Modified: Fri, 19 Oct 2018 13:16:01 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca31525dc2bbb9504368b4078065789efd552cbdad51067e49806a11fdcb7cc9`  
		Last Modified: Fri, 19 Oct 2018 13:16:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.18-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bbea285df7d0f5430e43c87d9382cf08123d4bf43c635a6bf90f6413ae4c6652
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120902777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48efd6ee0a0d7d210db69735b6346771e590c547e8c708c8d409f52da225472`
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
# Fri, 19 Oct 2018 10:41:03 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 10:41:04 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 10:41:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:42:50 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:42:52 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:42:53 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:42:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:42:59 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:43:00 GMT
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
	-	`sha256:c1e9960ed330aaec4f5fad5874d655dc1b82f5b22dc9070bd38f83d238a5ec30`  
		Last Modified: Fri, 19 Oct 2018 10:54:35 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08c0a4e6b06772321d4eacced2020794e7024fab9f12cc4def6fd26b8cd1455`  
		Last Modified: Fri, 19 Oct 2018 10:55:34 GMT  
		Size: 76.1 MB (76124866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5b75a9d89789802a63ecfbc610677140efcbc8059e0a1a0723a6ad79ff95cb`  
		Last Modified: Fri, 19 Oct 2018 10:54:34 GMT  
		Size: 2.6 KB (2599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b3af188c2cf00356fc10dc7ed4560a9d77ee3f6532ee7af3c45e0c52dd6dc`  
		Last Modified: Fri, 19 Oct 2018 10:54:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:6543f3cd54d93e56ae048935a5938a0f728e202c0e6f93e6d1be4047d06cf490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:783d2e7e1f1c2d7e3c33948fd4379fece05f1c20da340f32836f06b4a152b6e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113942538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f756926078fa66ed64c0940ea4944e91d60b46483b28b241a28974dc3704b5`
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
# Fri, 19 Oct 2018 01:37:55 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 01:37:55 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 01:37:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:38:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:38:19 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:38:19 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:38:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:38:20 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:38:21 GMT
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
	-	`sha256:28850b13dae4e0044091c7c275f81a050bf85f97641ed5c16634885111fee4a4`  
		Last Modified: Fri, 19 Oct 2018 01:44:11 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07944091dbe06806107d66d4d8454ab56128fc8d9cb44227c6d5c008a4a0a15`  
		Last Modified: Fri, 19 Oct 2018 01:44:26 GMT  
		Size: 73.3 MB (73253247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f068808f471605467ced2545b74bbec00e1c6246acf1bef4bf543a35530fdc`  
		Last Modified: Fri, 19 Oct 2018 01:44:10 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6612b14900c029468855f1e083d133d805ab18df2e6082184194a672a964c084`  
		Last Modified: Fri, 19 Oct 2018 01:44:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:e62bcfafd896846172d39fba6b389a8c81059a4d3ba89a6679dbd60193e42b78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108999270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f9a6c3f7afa72f911352fd7bc8e43419cfa91796f9779c93761da830219fc5`
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
# Fri, 19 Oct 2018 13:00:56 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 13:00:56 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 13:00:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 13:04:53 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 13:04:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 13:04:58 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 13:05:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 13:05:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 13:05:06 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 13:05:08 GMT
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
	-	`sha256:ec3f67b433abf2449844d3cef46127f6aa4ea7a535328c79962b3a64b1f43fb8`  
		Last Modified: Fri, 19 Oct 2018 13:16:01 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a8eaaee063d7d4f9f609528b3eb09e5fa3049d1577929cd6c5ad1ccc879d2a`  
		Last Modified: Fri, 19 Oct 2018 13:16:26 GMT  
		Size: 72.2 MB (72225917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda96e2b319c7bb1422c4a8c29950347f33ea584c53ffca2d593576d91341860`  
		Last Modified: Fri, 19 Oct 2018 13:16:01 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca31525dc2bbb9504368b4078065789efd552cbdad51067e49806a11fdcb7cc9`  
		Last Modified: Fri, 19 Oct 2018 13:16:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bbea285df7d0f5430e43c87d9382cf08123d4bf43c635a6bf90f6413ae4c6652
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120902777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48efd6ee0a0d7d210db69735b6346771e590c547e8c708c8d409f52da225472`
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
# Fri, 19 Oct 2018 10:41:03 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 19 Oct 2018 10:41:04 GMT
ENV MARIADB_VERSION=1:10.2.18+maria~bionic
# Fri, 19 Oct 2018 10:41:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 10:42:50 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 10:42:52 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 10:42:53 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:42:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:42:59 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 10:43:00 GMT
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
	-	`sha256:c1e9960ed330aaec4f5fad5874d655dc1b82f5b22dc9070bd38f83d238a5ec30`  
		Last Modified: Fri, 19 Oct 2018 10:54:35 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08c0a4e6b06772321d4eacced2020794e7024fab9f12cc4def6fd26b8cd1455`  
		Last Modified: Fri, 19 Oct 2018 10:55:34 GMT  
		Size: 76.1 MB (76124866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5b75a9d89789802a63ecfbc610677140efcbc8059e0a1a0723a6ad79ff95cb`  
		Last Modified: Fri, 19 Oct 2018 10:54:34 GMT  
		Size: 2.6 KB (2599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b3af188c2cf00356fc10dc7ed4560a9d77ee3f6532ee7af3c45e0c52dd6dc`  
		Last Modified: Fri, 19 Oct 2018 10:54:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:9d443337dfbb2a34583ed7c968cde6115ce1b10630530ff1f0f5c7f1e6f0a76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:54b616679cbcaa551e5c88af274f380077fc423ed0758def982ff835c33d865c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67238b4c1da06cdaec89d5728aaaa72b762304bffcc45b6bd7110503c9528111`
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
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 01:37:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:37:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:37:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:37:42 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:37:43 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:37:44 GMT
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
	-	`sha256:dea457cf24a89b390bf869372553a84b89ed0dce5d7b91b15a9ed489b229917b`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ebff5731d9c85a9c4f07f9f0ee5555b109317261a326de517e01464cc614`  
		Last Modified: Fri, 19 Oct 2018 01:42:05 GMT  
		Size: 74.3 MB (74256081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8171c3b818425eae3afdc2acefbea165e57a827965577a16b797993c3ed05959`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c72b0d0b51671a7cdc6d835575eb4a4a36b2f7a63e5a947c38f919ed2c2567`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
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
$ docker pull mariadb@sha256:9d443337dfbb2a34583ed7c968cde6115ce1b10630530ff1f0f5c7f1e6f0a76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.10` - linux; amd64

```console
$ docker pull mariadb@sha256:54b616679cbcaa551e5c88af274f380077fc423ed0758def982ff835c33d865c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67238b4c1da06cdaec89d5728aaaa72b762304bffcc45b6bd7110503c9528111`
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
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 01:37:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:37:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:37:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:37:42 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:37:43 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:37:44 GMT
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
	-	`sha256:dea457cf24a89b390bf869372553a84b89ed0dce5d7b91b15a9ed489b229917b`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ebff5731d9c85a9c4f07f9f0ee5555b109317261a326de517e01464cc614`  
		Last Modified: Fri, 19 Oct 2018 01:42:05 GMT  
		Size: 74.3 MB (74256081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8171c3b818425eae3afdc2acefbea165e57a827965577a16b797993c3ed05959`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c72b0d0b51671a7cdc6d835575eb4a4a36b2f7a63e5a947c38f919ed2c2567`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
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
$ docker pull mariadb@sha256:9d443337dfbb2a34583ed7c968cde6115ce1b10630530ff1f0f5c7f1e6f0a76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:54b616679cbcaa551e5c88af274f380077fc423ed0758def982ff835c33d865c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67238b4c1da06cdaec89d5728aaaa72b762304bffcc45b6bd7110503c9528111`
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
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 01:37:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:37:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:37:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:37:42 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:37:43 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:37:44 GMT
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
	-	`sha256:dea457cf24a89b390bf869372553a84b89ed0dce5d7b91b15a9ed489b229917b`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ebff5731d9c85a9c4f07f9f0ee5555b109317261a326de517e01464cc614`  
		Last Modified: Fri, 19 Oct 2018 01:42:05 GMT  
		Size: 74.3 MB (74256081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8171c3b818425eae3afdc2acefbea165e57a827965577a16b797993c3ed05959`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c72b0d0b51671a7cdc6d835575eb4a4a36b2f7a63e5a947c38f919ed2c2567`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
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
$ docker pull mariadb@sha256:9d443337dfbb2a34583ed7c968cde6115ce1b10630530ff1f0f5c7f1e6f0a76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:54b616679cbcaa551e5c88af274f380077fc423ed0758def982ff835c33d865c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67238b4c1da06cdaec89d5728aaaa72b762304bffcc45b6bd7110503c9528111`
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
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 01:37:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:37:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:37:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:37:42 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:37:43 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:37:44 GMT
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
	-	`sha256:dea457cf24a89b390bf869372553a84b89ed0dce5d7b91b15a9ed489b229917b`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ebff5731d9c85a9c4f07f9f0ee5555b109317261a326de517e01464cc614`  
		Last Modified: Fri, 19 Oct 2018 01:42:05 GMT  
		Size: 74.3 MB (74256081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8171c3b818425eae3afdc2acefbea165e57a827965577a16b797993c3ed05959`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c72b0d0b51671a7cdc6d835575eb4a4a36b2f7a63e5a947c38f919ed2c2567`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
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

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:9d443337dfbb2a34583ed7c968cde6115ce1b10630530ff1f0f5c7f1e6f0a76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:54b616679cbcaa551e5c88af274f380077fc423ed0758def982ff835c33d865c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67238b4c1da06cdaec89d5728aaaa72b762304bffcc45b6bd7110503c9528111`
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
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 01:37:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:37:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:37:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:37:42 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:37:43 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:37:44 GMT
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
	-	`sha256:dea457cf24a89b390bf869372553a84b89ed0dce5d7b91b15a9ed489b229917b`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ebff5731d9c85a9c4f07f9f0ee5555b109317261a326de517e01464cc614`  
		Last Modified: Fri, 19 Oct 2018 01:42:05 GMT  
		Size: 74.3 MB (74256081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8171c3b818425eae3afdc2acefbea165e57a827965577a16b797993c3ed05959`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c72b0d0b51671a7cdc6d835575eb4a4a36b2f7a63e5a947c38f919ed2c2567`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
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
$ docker pull mariadb@sha256:9d443337dfbb2a34583ed7c968cde6115ce1b10630530ff1f0f5c7f1e6f0a76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:54b616679cbcaa551e5c88af274f380077fc423ed0758def982ff835c33d865c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67238b4c1da06cdaec89d5728aaaa72b762304bffcc45b6bd7110503c9528111`
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
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 01:37:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:37:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:37:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:37:42 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:37:43 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:37:44 GMT
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
	-	`sha256:dea457cf24a89b390bf869372553a84b89ed0dce5d7b91b15a9ed489b229917b`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ebff5731d9c85a9c4f07f9f0ee5555b109317261a326de517e01464cc614`  
		Last Modified: Fri, 19 Oct 2018 01:42:05 GMT  
		Size: 74.3 MB (74256081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8171c3b818425eae3afdc2acefbea165e57a827965577a16b797993c3ed05959`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c72b0d0b51671a7cdc6d835575eb4a4a36b2f7a63e5a947c38f919ed2c2567`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
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
$ docker pull mariadb@sha256:9d443337dfbb2a34583ed7c968cde6115ce1b10630530ff1f0f5c7f1e6f0a76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:54b616679cbcaa551e5c88af274f380077fc423ed0758def982ff835c33d865c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114945376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67238b4c1da06cdaec89d5728aaaa72b762304bffcc45b6bd7110503c9528111`
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
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 19 Oct 2018 01:37:13 GMT
ENV MARIADB_VERSION=1:10.3.10+maria~bionic
# Fri, 19 Oct 2018 01:37:14 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 19 Oct 2018 01:37:42 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 19 Oct 2018 01:37:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 19 Oct 2018 01:37:42 GMT
COPY file:3511c9b6d68419cf5ea3d961cc161f1c6c07f43f6f7ca379716c34cbc7e809c7 in /usr/local/bin/ 
# Fri, 19 Oct 2018 01:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 01:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:37:43 GMT
EXPOSE 3306/tcp
# Fri, 19 Oct 2018 01:37:44 GMT
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
	-	`sha256:dea457cf24a89b390bf869372553a84b89ed0dce5d7b91b15a9ed489b229917b`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ebff5731d9c85a9c4f07f9f0ee5555b109317261a326de517e01464cc614`  
		Last Modified: Fri, 19 Oct 2018 01:42:05 GMT  
		Size: 74.3 MB (74256081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8171c3b818425eae3afdc2acefbea165e57a827965577a16b797993c3ed05959`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c72b0d0b51671a7cdc6d835575eb4a4a36b2f7a63e5a947c38f919ed2c2567`  
		Last Modified: Fri, 19 Oct 2018 01:41:50 GMT  
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
