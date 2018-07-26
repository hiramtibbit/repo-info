<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.35`](#mariadb10035)
-	[`mariadb:10.0.35-xenial`](#mariadb10035-xenial)
-	[`mariadb:10.0-xenial`](#mariadb100-xenial)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.34`](#mariadb10134)
-	[`mariadb:10.1.34-bionic`](#mariadb10134-bionic)
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
-	[`mariadb:5.5.60`](#mariadb5560)
-	[`mariadb:5.5.60-trusty`](#mariadb5560-trusty)
-	[`mariadb:5.5-trusty`](#mariadb55-trusty)
-	[`mariadb:5-trusty`](#mariadb5-trusty)
-	[`mariadb:bionic`](#mariadbbionic)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:4b6940b93536063516380e8da9110c9f99732b05d3b6117900013a3eb393518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:abc5ac09a3748d3dda3329519601f8d34c6d5f3c2a94d6cced8b9eb651329495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116250545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ac58d92ba23cee7cbe2d6f06f8ae9b1ce5e2ba50cc913c42e33f9eb5f7f2d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:45:05 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 25 Jul 2018 17:45:06 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Wed, 25 Jul 2018 17:45:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:46:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:46:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:46:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:46:22 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:46:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b10d734776a68d4c4737fc55980499d43cc3ff40328ddfca394209419f02f6`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1708fd8c15fd36498ca895786b700d06989e0d037dfc90e14a5369f754761e6c`  
		Last Modified: Wed, 25 Jul 2018 17:55:55 GMT  
		Size: 76.1 MB (76096345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12b569942dbcbddc64d1cedf53d5217ec3f9a250f1fe00d9d524af22390da2`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce166c4c434d8130e84587f6c78221b9192dda6dfd8bdb4d1072c97f7cb36f`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a605e72442e168184da22038db3b1fd1c9ba8f15ea6d793022ac62c09ce2d433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111208842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87031ebceab607cb329bd4c8bec0391367bd5188ea077ceebc2e048653e4861c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:55:54 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:55:55 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:55:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:00:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:00:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:00:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:00:17 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:00:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8034d16930f22f7ce587c5e2a4726d2a7f826eaf1fabe731fd97e40498a586c3`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb9f584b882c5e8df89e449dcfb3e96db4bb48cf4425cfd3358b91854e1204`  
		Last Modified: Thu, 26 Jul 2018 09:14:43 GMT  
		Size: 74.9 MB (74881765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea767448f673e6ecbc1a9325467d4a4a9dcfca1fc725a8959cef21c8f52948b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba77682482bd3e59b0e2afbc9a3536a9f1a6d9f8859f2a13fa68dfe609864b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
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
$ docker pull mariadb@sha256:0f369fae321b008f37da1a4535a526a0aa72bb9621d254770cb3ba84264ccbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:f1bd414d0de36e7ae3855d74ec5220acdd91c59cc798776550340aae58d99723
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114723612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5bd88b04d716bb568546232d59f91ffb55048268e9f79811227e9d8e92446d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:49:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:49:25 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:49:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:49:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:49:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:50:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:50:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:50:30 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 25 Jul 2018 17:50:30 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Wed, 25 Jul 2018 17:50:31 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:51:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:51:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:51:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:51:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:51:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:51:51 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:51:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ca05ccd6202ecef284bef8f0456c06f887f396c917db7de90dcefdefb2aee`  
		Last Modified: Wed, 25 Jul 2018 18:04:31 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a4c5fc142f0ba34bac7f8c35edcaed023ced4db8a02133bb37c7e3827a661`  
		Last Modified: Wed, 25 Jul 2018 18:04:28 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fae2732286e4376fbe6103fe7d1130bf13d751aee16207bf0d271522372230d`  
		Last Modified: Wed, 25 Jul 2018 18:04:29 GMT  
		Size: 840.3 KB (840289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7617225bb78945351812963057b6ce8aa5df6695b74ab4142280fbb33dc4947e`  
		Last Modified: Wed, 25 Jul 2018 18:04:28 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a314ceb65b76a093e745c8d14c194d17d463dc6e6b5e316d2739e25f1023c7d5`  
		Last Modified: Wed, 25 Jul 2018 18:04:30 GMT  
		Size: 7.3 MB (7319234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5314dff9dc153433b6842c23174a8f839d3413862d9fc026d7abe91f196f5`  
		Last Modified: Wed, 25 Jul 2018 18:04:25 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dd6807df80c127c4c6849470e964d7498ee64f5132abfde573a3ba4d6335e7`  
		Last Modified: Wed, 25 Jul 2018 18:04:24 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a28f53f8d619aae7e679e729545e4096d9285157c8ebc6738b157d59b607e6`  
		Last Modified: Wed, 25 Jul 2018 18:04:46 GMT  
		Size: 63.3 MB (63341072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afaa18f9f740500ecec77da862818f3e15c0360d682e96dffe14e393c5a643d`  
		Last Modified: Wed, 25 Jul 2018 18:04:25 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965174ecc620033321f5629638c9cb1cc316627c6044082aa84d84a4f5dd17c2`  
		Last Modified: Wed, 25 Jul 2018 18:04:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:4a02e99ea58a5d7c4328a3611bf2654d1fc97526b185b53e7389b337e8892d19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113677982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728f5539b569f91c324627a3f2163d3854dff57466dd88513c72e9840625d685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:37 GMT
ADD file:b3b33216c0cae381c088a15b0f80f366ed73656c90f6cec193136615bd271884 in / 
# Tue, 17 Jul 2018 12:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:43 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:01:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:01:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:01:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:02:19 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:02:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:02:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:02:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:02:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:02:59 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 26 Jul 2018 11:02:59 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Thu, 26 Jul 2018 11:03:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:04:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:04:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:04:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:04:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:04:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:04:11 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:04:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c27aea03ac5b40f96785140828606a6122596c083dafc804d4e5659f01c6c772`  
		Last Modified: Mon, 09 Jul 2018 15:07:21 GMT  
		Size: 43.5 MB (43464720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6d5fc1c9a4c34f03a94e8699ae482706a709a451c1f69150d6e8034cd68eb`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3c01b37f94b18f64e12bf474d8596a6c51bd322d8702250f32d68035e3e69d`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34866ee1e358e8692b54d96e02c02ed3a23f62c92f95e3201cf87b90dc4424e1`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99064844abf95ee6b28da3e65e78bb20d24c8deeeb1a3f1267788106424673ef`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e54fe1cd66de03883d2ba8ee003963ba4cf2f6a743b19ebf27deaaa02c661`  
		Last Modified: Thu, 26 Jul 2018 11:06:59 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75b4bc689cbc7967ef43aec09b71737069cd2fa14c618e8e392688420b83d24`  
		Last Modified: Thu, 26 Jul 2018 11:06:59 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8a3757cd76972954a82e935a1c7508361ad8710f11874b996c69a7bc20f1be`  
		Last Modified: Thu, 26 Jul 2018 11:06:58 GMT  
		Size: 819.3 KB (819314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b1a4fe1dbbde7fd7616714a872a459af617082feea19b7a0722314202214b1`  
		Last Modified: Thu, 26 Jul 2018 11:06:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4996260be8a0b8b8a6a53571c9c02f47c0bfbb16190dad632b77b1c1115c52f9`  
		Last Modified: Thu, 26 Jul 2018 11:07:01 GMT  
		Size: 7.4 MB (7447057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa158b449175cdcf890be6373ae20e0cc4dff95ed5af5b798f745c03f57db1c4`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f09762d13f0d8445ef177ff7cd6cfed8f1dd1d2610d8b101ff6380ccb7a7de`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ffe64c77414faf20e31f1e6df09cf6550f29edbafe2ebb06aff4460be32560`  
		Last Modified: Thu, 26 Jul 2018 11:07:22 GMT  
		Size: 61.9 MB (61913985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad9a09d52ea131b67028c36c8d09141da6b1389875db4b92ed84ea725de49d8`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193616338dd5c8c4e78df69b5accc9e169e160c167d4535247177ba205c7560f`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:577dc4cd207e221b7c16ba7bbb598d31abaf860aa9b179c82052ba2428cda7a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115794582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971f26b77fb975874b7a2cd82d46b12280c96c57d485342e5863ceec438e8986`
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
# Thu, 26 Jul 2018 09:57:27 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Thu, 26 Jul 2018 09:57:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 10:06:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 10:06:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 10:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 10:06:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 10:06:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:06:30 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 10:06:33 GMT
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
	-	`sha256:63fe8d301db8022b2c640f2c01cb0bb6611ee5f8f184a0ac42d3d82fa226486b`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed4a562d29ac296607bbfa333ede5d42817c763e16e140de93d7180ef271055`  
		Last Modified: Thu, 26 Jul 2018 10:19:11 GMT  
		Size: 62.2 MB (62199435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed08c42153edc3f513e4f9f6ed9f3e627b3cf0b975bf78c57ac757f55aaa08b`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca816072cae7a5fa1ce23494b02087215760dbf1494c70575aa7a09ecd9f76f`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.35`

```console
$ docker pull mariadb@sha256:0f369fae321b008f37da1a4535a526a0aa72bb9621d254770cb3ba84264ccbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.35` - linux; amd64

```console
$ docker pull mariadb@sha256:f1bd414d0de36e7ae3855d74ec5220acdd91c59cc798776550340aae58d99723
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114723612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5bd88b04d716bb568546232d59f91ffb55048268e9f79811227e9d8e92446d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:49:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:49:25 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:49:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:49:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:49:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:50:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:50:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:50:30 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 25 Jul 2018 17:50:30 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Wed, 25 Jul 2018 17:50:31 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:51:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:51:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:51:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:51:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:51:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:51:51 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:51:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ca05ccd6202ecef284bef8f0456c06f887f396c917db7de90dcefdefb2aee`  
		Last Modified: Wed, 25 Jul 2018 18:04:31 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a4c5fc142f0ba34bac7f8c35edcaed023ced4db8a02133bb37c7e3827a661`  
		Last Modified: Wed, 25 Jul 2018 18:04:28 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fae2732286e4376fbe6103fe7d1130bf13d751aee16207bf0d271522372230d`  
		Last Modified: Wed, 25 Jul 2018 18:04:29 GMT  
		Size: 840.3 KB (840289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7617225bb78945351812963057b6ce8aa5df6695b74ab4142280fbb33dc4947e`  
		Last Modified: Wed, 25 Jul 2018 18:04:28 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a314ceb65b76a093e745c8d14c194d17d463dc6e6b5e316d2739e25f1023c7d5`  
		Last Modified: Wed, 25 Jul 2018 18:04:30 GMT  
		Size: 7.3 MB (7319234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5314dff9dc153433b6842c23174a8f839d3413862d9fc026d7abe91f196f5`  
		Last Modified: Wed, 25 Jul 2018 18:04:25 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dd6807df80c127c4c6849470e964d7498ee64f5132abfde573a3ba4d6335e7`  
		Last Modified: Wed, 25 Jul 2018 18:04:24 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a28f53f8d619aae7e679e729545e4096d9285157c8ebc6738b157d59b607e6`  
		Last Modified: Wed, 25 Jul 2018 18:04:46 GMT  
		Size: 63.3 MB (63341072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afaa18f9f740500ecec77da862818f3e15c0360d682e96dffe14e393c5a643d`  
		Last Modified: Wed, 25 Jul 2018 18:04:25 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965174ecc620033321f5629638c9cb1cc316627c6044082aa84d84a4f5dd17c2`  
		Last Modified: Wed, 25 Jul 2018 18:04:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.35` - linux; 386

```console
$ docker pull mariadb@sha256:4a02e99ea58a5d7c4328a3611bf2654d1fc97526b185b53e7389b337e8892d19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113677982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728f5539b569f91c324627a3f2163d3854dff57466dd88513c72e9840625d685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:37 GMT
ADD file:b3b33216c0cae381c088a15b0f80f366ed73656c90f6cec193136615bd271884 in / 
# Tue, 17 Jul 2018 12:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:43 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:01:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:01:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:01:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:02:19 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:02:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:02:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:02:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:02:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:02:59 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 26 Jul 2018 11:02:59 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Thu, 26 Jul 2018 11:03:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:04:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:04:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:04:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:04:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:04:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:04:11 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:04:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c27aea03ac5b40f96785140828606a6122596c083dafc804d4e5659f01c6c772`  
		Last Modified: Mon, 09 Jul 2018 15:07:21 GMT  
		Size: 43.5 MB (43464720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6d5fc1c9a4c34f03a94e8699ae482706a709a451c1f69150d6e8034cd68eb`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3c01b37f94b18f64e12bf474d8596a6c51bd322d8702250f32d68035e3e69d`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34866ee1e358e8692b54d96e02c02ed3a23f62c92f95e3201cf87b90dc4424e1`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99064844abf95ee6b28da3e65e78bb20d24c8deeeb1a3f1267788106424673ef`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e54fe1cd66de03883d2ba8ee003963ba4cf2f6a743b19ebf27deaaa02c661`  
		Last Modified: Thu, 26 Jul 2018 11:06:59 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75b4bc689cbc7967ef43aec09b71737069cd2fa14c618e8e392688420b83d24`  
		Last Modified: Thu, 26 Jul 2018 11:06:59 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8a3757cd76972954a82e935a1c7508361ad8710f11874b996c69a7bc20f1be`  
		Last Modified: Thu, 26 Jul 2018 11:06:58 GMT  
		Size: 819.3 KB (819314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b1a4fe1dbbde7fd7616714a872a459af617082feea19b7a0722314202214b1`  
		Last Modified: Thu, 26 Jul 2018 11:06:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4996260be8a0b8b8a6a53571c9c02f47c0bfbb16190dad632b77b1c1115c52f9`  
		Last Modified: Thu, 26 Jul 2018 11:07:01 GMT  
		Size: 7.4 MB (7447057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa158b449175cdcf890be6373ae20e0cc4dff95ed5af5b798f745c03f57db1c4`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f09762d13f0d8445ef177ff7cd6cfed8f1dd1d2610d8b101ff6380ccb7a7de`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ffe64c77414faf20e31f1e6df09cf6550f29edbafe2ebb06aff4460be32560`  
		Last Modified: Thu, 26 Jul 2018 11:07:22 GMT  
		Size: 61.9 MB (61913985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad9a09d52ea131b67028c36c8d09141da6b1389875db4b92ed84ea725de49d8`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193616338dd5c8c4e78df69b5accc9e169e160c167d4535247177ba205c7560f`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.35` - linux; ppc64le

```console
$ docker pull mariadb@sha256:577dc4cd207e221b7c16ba7bbb598d31abaf860aa9b179c82052ba2428cda7a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115794582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971f26b77fb975874b7a2cd82d46b12280c96c57d485342e5863ceec438e8986`
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
# Thu, 26 Jul 2018 09:57:27 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Thu, 26 Jul 2018 09:57:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 10:06:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 10:06:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 10:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 10:06:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 10:06:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:06:30 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 10:06:33 GMT
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
	-	`sha256:63fe8d301db8022b2c640f2c01cb0bb6611ee5f8f184a0ac42d3d82fa226486b`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed4a562d29ac296607bbfa333ede5d42817c763e16e140de93d7180ef271055`  
		Last Modified: Thu, 26 Jul 2018 10:19:11 GMT  
		Size: 62.2 MB (62199435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed08c42153edc3f513e4f9f6ed9f3e627b3cf0b975bf78c57ac757f55aaa08b`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca816072cae7a5fa1ce23494b02087215760dbf1494c70575aa7a09ecd9f76f`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.35-xenial`

```console
$ docker pull mariadb@sha256:0f369fae321b008f37da1a4535a526a0aa72bb9621d254770cb3ba84264ccbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.35-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:f1bd414d0de36e7ae3855d74ec5220acdd91c59cc798776550340aae58d99723
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114723612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5bd88b04d716bb568546232d59f91ffb55048268e9f79811227e9d8e92446d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:49:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:49:25 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:49:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:49:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:49:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:50:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:50:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:50:30 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 25 Jul 2018 17:50:30 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Wed, 25 Jul 2018 17:50:31 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:51:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:51:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:51:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:51:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:51:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:51:51 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:51:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ca05ccd6202ecef284bef8f0456c06f887f396c917db7de90dcefdefb2aee`  
		Last Modified: Wed, 25 Jul 2018 18:04:31 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a4c5fc142f0ba34bac7f8c35edcaed023ced4db8a02133bb37c7e3827a661`  
		Last Modified: Wed, 25 Jul 2018 18:04:28 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fae2732286e4376fbe6103fe7d1130bf13d751aee16207bf0d271522372230d`  
		Last Modified: Wed, 25 Jul 2018 18:04:29 GMT  
		Size: 840.3 KB (840289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7617225bb78945351812963057b6ce8aa5df6695b74ab4142280fbb33dc4947e`  
		Last Modified: Wed, 25 Jul 2018 18:04:28 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a314ceb65b76a093e745c8d14c194d17d463dc6e6b5e316d2739e25f1023c7d5`  
		Last Modified: Wed, 25 Jul 2018 18:04:30 GMT  
		Size: 7.3 MB (7319234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5314dff9dc153433b6842c23174a8f839d3413862d9fc026d7abe91f196f5`  
		Last Modified: Wed, 25 Jul 2018 18:04:25 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dd6807df80c127c4c6849470e964d7498ee64f5132abfde573a3ba4d6335e7`  
		Last Modified: Wed, 25 Jul 2018 18:04:24 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a28f53f8d619aae7e679e729545e4096d9285157c8ebc6738b157d59b607e6`  
		Last Modified: Wed, 25 Jul 2018 18:04:46 GMT  
		Size: 63.3 MB (63341072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afaa18f9f740500ecec77da862818f3e15c0360d682e96dffe14e393c5a643d`  
		Last Modified: Wed, 25 Jul 2018 18:04:25 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965174ecc620033321f5629638c9cb1cc316627c6044082aa84d84a4f5dd17c2`  
		Last Modified: Wed, 25 Jul 2018 18:04:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.35-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:4a02e99ea58a5d7c4328a3611bf2654d1fc97526b185b53e7389b337e8892d19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113677982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728f5539b569f91c324627a3f2163d3854dff57466dd88513c72e9840625d685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:37 GMT
ADD file:b3b33216c0cae381c088a15b0f80f366ed73656c90f6cec193136615bd271884 in / 
# Tue, 17 Jul 2018 12:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:43 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:01:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:01:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:01:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:02:19 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:02:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:02:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:02:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:02:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:02:59 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 26 Jul 2018 11:02:59 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Thu, 26 Jul 2018 11:03:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:04:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:04:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:04:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:04:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:04:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:04:11 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:04:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c27aea03ac5b40f96785140828606a6122596c083dafc804d4e5659f01c6c772`  
		Last Modified: Mon, 09 Jul 2018 15:07:21 GMT  
		Size: 43.5 MB (43464720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6d5fc1c9a4c34f03a94e8699ae482706a709a451c1f69150d6e8034cd68eb`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3c01b37f94b18f64e12bf474d8596a6c51bd322d8702250f32d68035e3e69d`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34866ee1e358e8692b54d96e02c02ed3a23f62c92f95e3201cf87b90dc4424e1`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99064844abf95ee6b28da3e65e78bb20d24c8deeeb1a3f1267788106424673ef`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e54fe1cd66de03883d2ba8ee003963ba4cf2f6a743b19ebf27deaaa02c661`  
		Last Modified: Thu, 26 Jul 2018 11:06:59 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75b4bc689cbc7967ef43aec09b71737069cd2fa14c618e8e392688420b83d24`  
		Last Modified: Thu, 26 Jul 2018 11:06:59 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8a3757cd76972954a82e935a1c7508361ad8710f11874b996c69a7bc20f1be`  
		Last Modified: Thu, 26 Jul 2018 11:06:58 GMT  
		Size: 819.3 KB (819314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b1a4fe1dbbde7fd7616714a872a459af617082feea19b7a0722314202214b1`  
		Last Modified: Thu, 26 Jul 2018 11:06:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4996260be8a0b8b8a6a53571c9c02f47c0bfbb16190dad632b77b1c1115c52f9`  
		Last Modified: Thu, 26 Jul 2018 11:07:01 GMT  
		Size: 7.4 MB (7447057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa158b449175cdcf890be6373ae20e0cc4dff95ed5af5b798f745c03f57db1c4`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f09762d13f0d8445ef177ff7cd6cfed8f1dd1d2610d8b101ff6380ccb7a7de`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ffe64c77414faf20e31f1e6df09cf6550f29edbafe2ebb06aff4460be32560`  
		Last Modified: Thu, 26 Jul 2018 11:07:22 GMT  
		Size: 61.9 MB (61913985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad9a09d52ea131b67028c36c8d09141da6b1389875db4b92ed84ea725de49d8`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193616338dd5c8c4e78df69b5accc9e169e160c167d4535247177ba205c7560f`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.35-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:577dc4cd207e221b7c16ba7bbb598d31abaf860aa9b179c82052ba2428cda7a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115794582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971f26b77fb975874b7a2cd82d46b12280c96c57d485342e5863ceec438e8986`
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
# Thu, 26 Jul 2018 09:57:27 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Thu, 26 Jul 2018 09:57:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 10:06:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 10:06:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 10:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 10:06:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 10:06:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:06:30 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 10:06:33 GMT
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
	-	`sha256:63fe8d301db8022b2c640f2c01cb0bb6611ee5f8f184a0ac42d3d82fa226486b`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed4a562d29ac296607bbfa333ede5d42817c763e16e140de93d7180ef271055`  
		Last Modified: Thu, 26 Jul 2018 10:19:11 GMT  
		Size: 62.2 MB (62199435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed08c42153edc3f513e4f9f6ed9f3e627b3cf0b975bf78c57ac757f55aaa08b`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca816072cae7a5fa1ce23494b02087215760dbf1494c70575aa7a09ecd9f76f`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:0f369fae321b008f37da1a4535a526a0aa72bb9621d254770cb3ba84264ccbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:f1bd414d0de36e7ae3855d74ec5220acdd91c59cc798776550340aae58d99723
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114723612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5bd88b04d716bb568546232d59f91ffb55048268e9f79811227e9d8e92446d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:49:09 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:49:25 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:49:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:49:46 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:49:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:50:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:50:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:50:30 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 25 Jul 2018 17:50:30 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Wed, 25 Jul 2018 17:50:31 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:51:48 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:51:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:51:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:51:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:51:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:51:51 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:51:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ca05ccd6202ecef284bef8f0456c06f887f396c917db7de90dcefdefb2aee`  
		Last Modified: Wed, 25 Jul 2018 18:04:31 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8a4c5fc142f0ba34bac7f8c35edcaed023ced4db8a02133bb37c7e3827a661`  
		Last Modified: Wed, 25 Jul 2018 18:04:28 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fae2732286e4376fbe6103fe7d1130bf13d751aee16207bf0d271522372230d`  
		Last Modified: Wed, 25 Jul 2018 18:04:29 GMT  
		Size: 840.3 KB (840289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7617225bb78945351812963057b6ce8aa5df6695b74ab4142280fbb33dc4947e`  
		Last Modified: Wed, 25 Jul 2018 18:04:28 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a314ceb65b76a093e745c8d14c194d17d463dc6e6b5e316d2739e25f1023c7d5`  
		Last Modified: Wed, 25 Jul 2018 18:04:30 GMT  
		Size: 7.3 MB (7319234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5314dff9dc153433b6842c23174a8f839d3413862d9fc026d7abe91f196f5`  
		Last Modified: Wed, 25 Jul 2018 18:04:25 GMT  
		Size: 25.1 KB (25128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dd6807df80c127c4c6849470e964d7498ee64f5132abfde573a3ba4d6335e7`  
		Last Modified: Wed, 25 Jul 2018 18:04:24 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a28f53f8d619aae7e679e729545e4096d9285157c8ebc6738b157d59b607e6`  
		Last Modified: Wed, 25 Jul 2018 18:04:46 GMT  
		Size: 63.3 MB (63341072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afaa18f9f740500ecec77da862818f3e15c0360d682e96dffe14e393c5a643d`  
		Last Modified: Wed, 25 Jul 2018 18:04:25 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965174ecc620033321f5629638c9cb1cc316627c6044082aa84d84a4f5dd17c2`  
		Last Modified: Wed, 25 Jul 2018 18:04:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:4a02e99ea58a5d7c4328a3611bf2654d1fc97526b185b53e7389b337e8892d19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113677982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728f5539b569f91c324627a3f2163d3854dff57466dd88513c72e9840625d685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 12:34:37 GMT
ADD file:b3b33216c0cae381c088a15b0f80f366ed73656c90f6cec193136615bd271884 in / 
# Tue, 17 Jul 2018 12:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:34:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:34:43 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 11:01:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 11:01:58 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:01:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 11:02:19 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 11:02:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 11:02:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:02:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 11:02:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 11:02:59 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 26 Jul 2018 11:02:59 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Thu, 26 Jul 2018 11:03:00 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:04:08 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:04:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:04:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:04:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:04:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:04:11 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:04:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c27aea03ac5b40f96785140828606a6122596c083dafc804d4e5659f01c6c772`  
		Last Modified: Mon, 09 Jul 2018 15:07:21 GMT  
		Size: 43.5 MB (43464720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6d5fc1c9a4c34f03a94e8699ae482706a709a451c1f69150d6e8034cd68eb`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3c01b37f94b18f64e12bf474d8596a6c51bd322d8702250f32d68035e3e69d`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34866ee1e358e8692b54d96e02c02ed3a23f62c92f95e3201cf87b90dc4424e1`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99064844abf95ee6b28da3e65e78bb20d24c8deeeb1a3f1267788106424673ef`  
		Last Modified: Tue, 17 Jul 2018 12:39:04 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e54fe1cd66de03883d2ba8ee003963ba4cf2f6a743b19ebf27deaaa02c661`  
		Last Modified: Thu, 26 Jul 2018 11:06:59 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75b4bc689cbc7967ef43aec09b71737069cd2fa14c618e8e392688420b83d24`  
		Last Modified: Thu, 26 Jul 2018 11:06:59 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8a3757cd76972954a82e935a1c7508361ad8710f11874b996c69a7bc20f1be`  
		Last Modified: Thu, 26 Jul 2018 11:06:58 GMT  
		Size: 819.3 KB (819314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b1a4fe1dbbde7fd7616714a872a459af617082feea19b7a0722314202214b1`  
		Last Modified: Thu, 26 Jul 2018 11:06:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4996260be8a0b8b8a6a53571c9c02f47c0bfbb16190dad632b77b1c1115c52f9`  
		Last Modified: Thu, 26 Jul 2018 11:07:01 GMT  
		Size: 7.4 MB (7447057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa158b449175cdcf890be6373ae20e0cc4dff95ed5af5b798f745c03f57db1c4`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f09762d13f0d8445ef177ff7cd6cfed8f1dd1d2610d8b101ff6380ccb7a7de`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ffe64c77414faf20e31f1e6df09cf6550f29edbafe2ebb06aff4460be32560`  
		Last Modified: Thu, 26 Jul 2018 11:07:22 GMT  
		Size: 61.9 MB (61913985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad9a09d52ea131b67028c36c8d09141da6b1389875db4b92ed84ea725de49d8`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193616338dd5c8c4e78df69b5accc9e169e160c167d4535247177ba205c7560f`  
		Last Modified: Thu, 26 Jul 2018 11:06:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:577dc4cd207e221b7c16ba7bbb598d31abaf860aa9b179c82052ba2428cda7a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115794582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971f26b77fb975874b7a2cd82d46b12280c96c57d485342e5863ceec438e8986`
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
# Thu, 26 Jul 2018 09:57:27 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~xenial
# Thu, 26 Jul 2018 09:57:38 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 10:06:18 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 10:06:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 10:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 10:06:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 10:06:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:06:30 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 10:06:33 GMT
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
	-	`sha256:63fe8d301db8022b2c640f2c01cb0bb6611ee5f8f184a0ac42d3d82fa226486b`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed4a562d29ac296607bbfa333ede5d42817c763e16e140de93d7180ef271055`  
		Last Modified: Thu, 26 Jul 2018 10:19:11 GMT  
		Size: 62.2 MB (62199435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed08c42153edc3f513e4f9f6ed9f3e627b3cf0b975bf78c57ac757f55aaa08b`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca816072cae7a5fa1ce23494b02087215760dbf1494c70575aa7a09ecd9f76f`  
		Last Modified: Thu, 26 Jul 2018 10:18:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:e69cd0e5413ed2e76fe62387aac12be1cb319b2eeba98a91afbd6087215a4e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:a60d9132f430cd5dd93fdcadeaf709513ac5af0023abd47f61e10aadaddc7c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134256768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecde8554f345b4770a82c84f1bf73af3a6ead7249be8f2cc5b16ff8562b7370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:47:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 25 Jul 2018 17:47:55 GMT
ENV MARIADB_VERSION=1:10.1.34+maria-1~bionic
# Wed, 25 Jul 2018 17:47:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:48:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:48:50 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:48:50 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:48:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:48:52 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:48:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267325bb013dcc788cb031e7fd3a71d6b1843f742676405207a30a810524ba9f`  
		Last Modified: Wed, 25 Jul 2018 18:02:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbc17db5419735e701b9b6c489e67cc0e413b5891155e2284a6d14d3d0f78f0`  
		Last Modified: Wed, 25 Jul 2018 18:02:34 GMT  
		Size: 94.1 MB (94102567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dcf3b83700a9932269706437d784e103cc3f0c10eb031af519fa71578938af`  
		Last Modified: Wed, 25 Jul 2018 18:02:01 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a210115555c09a44f7ede0a1e56984ea3f931b50d7543432df68544fcbc63b2`  
		Last Modified: Wed, 25 Jul 2018 18:02:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bce860107933e7c853b2e0cf8885a377d1070946061d62f100f3a2ed255123bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126640649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a13121ff2227c631deb586234bcb63971f5ebe4f5957287e7fab9f1d313a92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:04:54 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 26 Jul 2018 09:04:54 GMT
ENV MARIADB_VERSION=1:10.1.34+maria-1~bionic
# Thu, 26 Jul 2018 09:04:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:08:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:08:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:08:23 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:08:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:08:39 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6943d8b7b97a6c388eb3921c5f26367caedc2d7a06228a13574bb1aefa9a3b`  
		Last Modified: Thu, 26 Jul 2018 09:20:09 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac679bf36e8334bff7f3701f33be581e9476f4333d00a799db41c94447508673`  
		Last Modified: Thu, 26 Jul 2018 09:20:43 GMT  
		Size: 90.3 MB (90313572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97429021bba836e1ff6b990328462e49013ef6cf9c1157d4f4856afe2bd5933`  
		Last Modified: Thu, 26 Jul 2018 09:20:09 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669fb2c5e285dd58284b980774133a014751507f89f55c22b9617b0ea6e73d2a`  
		Last Modified: Thu, 26 Jul 2018 09:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.34`

```console
$ docker pull mariadb@sha256:e69cd0e5413ed2e76fe62387aac12be1cb319b2eeba98a91afbd6087215a4e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mariadb:10.1.34` - linux; amd64

```console
$ docker pull mariadb@sha256:a60d9132f430cd5dd93fdcadeaf709513ac5af0023abd47f61e10aadaddc7c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134256768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecde8554f345b4770a82c84f1bf73af3a6ead7249be8f2cc5b16ff8562b7370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:47:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 25 Jul 2018 17:47:55 GMT
ENV MARIADB_VERSION=1:10.1.34+maria-1~bionic
# Wed, 25 Jul 2018 17:47:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:48:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:48:50 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:48:50 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:48:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:48:52 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:48:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267325bb013dcc788cb031e7fd3a71d6b1843f742676405207a30a810524ba9f`  
		Last Modified: Wed, 25 Jul 2018 18:02:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbc17db5419735e701b9b6c489e67cc0e413b5891155e2284a6d14d3d0f78f0`  
		Last Modified: Wed, 25 Jul 2018 18:02:34 GMT  
		Size: 94.1 MB (94102567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dcf3b83700a9932269706437d784e103cc3f0c10eb031af519fa71578938af`  
		Last Modified: Wed, 25 Jul 2018 18:02:01 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a210115555c09a44f7ede0a1e56984ea3f931b50d7543432df68544fcbc63b2`  
		Last Modified: Wed, 25 Jul 2018 18:02:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.34` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bce860107933e7c853b2e0cf8885a377d1070946061d62f100f3a2ed255123bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126640649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a13121ff2227c631deb586234bcb63971f5ebe4f5957287e7fab9f1d313a92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:04:54 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 26 Jul 2018 09:04:54 GMT
ENV MARIADB_VERSION=1:10.1.34+maria-1~bionic
# Thu, 26 Jul 2018 09:04:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:08:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:08:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:08:23 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:08:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:08:39 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6943d8b7b97a6c388eb3921c5f26367caedc2d7a06228a13574bb1aefa9a3b`  
		Last Modified: Thu, 26 Jul 2018 09:20:09 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac679bf36e8334bff7f3701f33be581e9476f4333d00a799db41c94447508673`  
		Last Modified: Thu, 26 Jul 2018 09:20:43 GMT  
		Size: 90.3 MB (90313572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97429021bba836e1ff6b990328462e49013ef6cf9c1157d4f4856afe2bd5933`  
		Last Modified: Thu, 26 Jul 2018 09:20:09 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669fb2c5e285dd58284b980774133a014751507f89f55c22b9617b0ea6e73d2a`  
		Last Modified: Thu, 26 Jul 2018 09:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.34-bionic`

```console
$ docker pull mariadb@sha256:e69cd0e5413ed2e76fe62387aac12be1cb319b2eeba98a91afbd6087215a4e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mariadb:10.1.34-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a60d9132f430cd5dd93fdcadeaf709513ac5af0023abd47f61e10aadaddc7c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134256768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecde8554f345b4770a82c84f1bf73af3a6ead7249be8f2cc5b16ff8562b7370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:47:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 25 Jul 2018 17:47:55 GMT
ENV MARIADB_VERSION=1:10.1.34+maria-1~bionic
# Wed, 25 Jul 2018 17:47:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:48:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:48:50 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:48:50 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:48:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:48:52 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:48:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267325bb013dcc788cb031e7fd3a71d6b1843f742676405207a30a810524ba9f`  
		Last Modified: Wed, 25 Jul 2018 18:02:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbc17db5419735e701b9b6c489e67cc0e413b5891155e2284a6d14d3d0f78f0`  
		Last Modified: Wed, 25 Jul 2018 18:02:34 GMT  
		Size: 94.1 MB (94102567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dcf3b83700a9932269706437d784e103cc3f0c10eb031af519fa71578938af`  
		Last Modified: Wed, 25 Jul 2018 18:02:01 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a210115555c09a44f7ede0a1e56984ea3f931b50d7543432df68544fcbc63b2`  
		Last Modified: Wed, 25 Jul 2018 18:02:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.34-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bce860107933e7c853b2e0cf8885a377d1070946061d62f100f3a2ed255123bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126640649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a13121ff2227c631deb586234bcb63971f5ebe4f5957287e7fab9f1d313a92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:04:54 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 26 Jul 2018 09:04:54 GMT
ENV MARIADB_VERSION=1:10.1.34+maria-1~bionic
# Thu, 26 Jul 2018 09:04:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:08:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:08:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:08:23 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:08:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:08:39 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6943d8b7b97a6c388eb3921c5f26367caedc2d7a06228a13574bb1aefa9a3b`  
		Last Modified: Thu, 26 Jul 2018 09:20:09 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac679bf36e8334bff7f3701f33be581e9476f4333d00a799db41c94447508673`  
		Last Modified: Thu, 26 Jul 2018 09:20:43 GMT  
		Size: 90.3 MB (90313572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97429021bba836e1ff6b990328462e49013ef6cf9c1157d4f4856afe2bd5933`  
		Last Modified: Thu, 26 Jul 2018 09:20:09 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669fb2c5e285dd58284b980774133a014751507f89f55c22b9617b0ea6e73d2a`  
		Last Modified: Thu, 26 Jul 2018 09:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:e69cd0e5413ed2e76fe62387aac12be1cb319b2eeba98a91afbd6087215a4e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:a60d9132f430cd5dd93fdcadeaf709513ac5af0023abd47f61e10aadaddc7c0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134256768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecde8554f345b4770a82c84f1bf73af3a6ead7249be8f2cc5b16ff8562b7370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:47:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 25 Jul 2018 17:47:55 GMT
ENV MARIADB_VERSION=1:10.1.34+maria-1~bionic
# Wed, 25 Jul 2018 17:47:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:48:49 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:48:50 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:48:50 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:48:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:48:52 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:48:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267325bb013dcc788cb031e7fd3a71d6b1843f742676405207a30a810524ba9f`  
		Last Modified: Wed, 25 Jul 2018 18:02:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbc17db5419735e701b9b6c489e67cc0e413b5891155e2284a6d14d3d0f78f0`  
		Last Modified: Wed, 25 Jul 2018 18:02:34 GMT  
		Size: 94.1 MB (94102567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dcf3b83700a9932269706437d784e103cc3f0c10eb031af519fa71578938af`  
		Last Modified: Wed, 25 Jul 2018 18:02:01 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a210115555c09a44f7ede0a1e56984ea3f931b50d7543432df68544fcbc63b2`  
		Last Modified: Wed, 25 Jul 2018 18:02:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bce860107933e7c853b2e0cf8885a377d1070946061d62f100f3a2ed255123bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126640649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a13121ff2227c631deb586234bcb63971f5ebe4f5957287e7fab9f1d313a92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:04:54 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 26 Jul 2018 09:04:54 GMT
ENV MARIADB_VERSION=1:10.1.34+maria-1~bionic
# Thu, 26 Jul 2018 09:04:57 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:08:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:08:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:08:23 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:08:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:08:39 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6943d8b7b97a6c388eb3921c5f26367caedc2d7a06228a13574bb1aefa9a3b`  
		Last Modified: Thu, 26 Jul 2018 09:20:09 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac679bf36e8334bff7f3701f33be581e9476f4333d00a799db41c94447508673`  
		Last Modified: Thu, 26 Jul 2018 09:20:43 GMT  
		Size: 90.3 MB (90313572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97429021bba836e1ff6b990328462e49013ef6cf9c1157d4f4856afe2bd5933`  
		Last Modified: Thu, 26 Jul 2018 09:20:09 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669fb2c5e285dd58284b980774133a014751507f89f55c22b9617b0ea6e73d2a`  
		Last Modified: Thu, 26 Jul 2018 09:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:d14e862a3a6006f3a93a5dcc29cdece9fa0acfa44e1a7bb4823dd8b1d06b49d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:9579fe9336805a7285ec298e0a970cce2e9d165f1fa2f7239e095159076572a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115199230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb34fb609ffd6d95bca5bf2661941566fd45b1d2bee621927af5e966672c9e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:46:56 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 25 Jul 2018 17:46:57 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Wed, 25 Jul 2018 17:46:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:47:34 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:47:34 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:47:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:47:36 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466374c513dec95c39881d5e3ad9cb9a3235eaff2da45e4d23bb816f1323f3e`  
		Last Modified: Wed, 25 Jul 2018 17:59:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63b486b0a2feebce41b8948d353c72481c0c50e2745c5618fe0b5a674456ea`  
		Last Modified: Wed, 25 Jul 2018 18:00:25 GMT  
		Size: 75.0 MB (75045033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bf9a34cb777a54f2ab4c5181876593b5fb3c3c979059e476718f4b0d18678a`  
		Last Modified: Wed, 25 Jul 2018 18:00:00 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264ac021174d381a2b7b2de1af6310331f67b47e548c6b8b29d6999ad1db5cd7`  
		Last Modified: Wed, 25 Jul 2018 17:59:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:987311e17458816405e56525a1d537efa9edbc7cd587f0c7fe1fb562f2673573
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110252186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e02b2ef1d29b6178c4a3e3624709a99e97340ab698c5e775ce331c7bedf2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:00:50 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 09:00:54 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 09:01:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:24 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:04:25 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:04:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:04:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:04:30 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:04:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df46e35960ab5067a8cd2519495461c8ccdab1967832f585f8491418b0d65a21`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f60bc837e811b0619520a8dca6c00a9a2f343907b72842d7753b599da1812`  
		Last Modified: Thu, 26 Jul 2018 09:18:55 GMT  
		Size: 73.9 MB (73925110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310af038ee5472eb08bc21339b73b4d4d926a01ce889b16401e5580d908ee1ec`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd1456a04559d0781c73ecd496c02aa1372336ef8ee30f9bbb6909a2eaff252`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
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
$ docker pull mariadb@sha256:d14e862a3a6006f3a93a5dcc29cdece9fa0acfa44e1a7bb4823dd8b1d06b49d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.16` - linux; amd64

```console
$ docker pull mariadb@sha256:9579fe9336805a7285ec298e0a970cce2e9d165f1fa2f7239e095159076572a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115199230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb34fb609ffd6d95bca5bf2661941566fd45b1d2bee621927af5e966672c9e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:46:56 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 25 Jul 2018 17:46:57 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Wed, 25 Jul 2018 17:46:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:47:34 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:47:34 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:47:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:47:36 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466374c513dec95c39881d5e3ad9cb9a3235eaff2da45e4d23bb816f1323f3e`  
		Last Modified: Wed, 25 Jul 2018 17:59:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63b486b0a2feebce41b8948d353c72481c0c50e2745c5618fe0b5a674456ea`  
		Last Modified: Wed, 25 Jul 2018 18:00:25 GMT  
		Size: 75.0 MB (75045033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bf9a34cb777a54f2ab4c5181876593b5fb3c3c979059e476718f4b0d18678a`  
		Last Modified: Wed, 25 Jul 2018 18:00:00 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264ac021174d381a2b7b2de1af6310331f67b47e548c6b8b29d6999ad1db5cd7`  
		Last Modified: Wed, 25 Jul 2018 17:59:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.16` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:987311e17458816405e56525a1d537efa9edbc7cd587f0c7fe1fb562f2673573
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110252186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e02b2ef1d29b6178c4a3e3624709a99e97340ab698c5e775ce331c7bedf2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:00:50 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 09:00:54 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 09:01:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:24 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:04:25 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:04:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:04:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:04:30 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:04:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df46e35960ab5067a8cd2519495461c8ccdab1967832f585f8491418b0d65a21`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f60bc837e811b0619520a8dca6c00a9a2f343907b72842d7753b599da1812`  
		Last Modified: Thu, 26 Jul 2018 09:18:55 GMT  
		Size: 73.9 MB (73925110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310af038ee5472eb08bc21339b73b4d4d926a01ce889b16401e5580d908ee1ec`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd1456a04559d0781c73ecd496c02aa1372336ef8ee30f9bbb6909a2eaff252`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
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
$ docker pull mariadb@sha256:d14e862a3a6006f3a93a5dcc29cdece9fa0acfa44e1a7bb4823dd8b1d06b49d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.16-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:9579fe9336805a7285ec298e0a970cce2e9d165f1fa2f7239e095159076572a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115199230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb34fb609ffd6d95bca5bf2661941566fd45b1d2bee621927af5e966672c9e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:46:56 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 25 Jul 2018 17:46:57 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Wed, 25 Jul 2018 17:46:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:47:34 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:47:34 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:47:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:47:36 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466374c513dec95c39881d5e3ad9cb9a3235eaff2da45e4d23bb816f1323f3e`  
		Last Modified: Wed, 25 Jul 2018 17:59:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63b486b0a2feebce41b8948d353c72481c0c50e2745c5618fe0b5a674456ea`  
		Last Modified: Wed, 25 Jul 2018 18:00:25 GMT  
		Size: 75.0 MB (75045033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bf9a34cb777a54f2ab4c5181876593b5fb3c3c979059e476718f4b0d18678a`  
		Last Modified: Wed, 25 Jul 2018 18:00:00 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264ac021174d381a2b7b2de1af6310331f67b47e548c6b8b29d6999ad1db5cd7`  
		Last Modified: Wed, 25 Jul 2018 17:59:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.16-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:987311e17458816405e56525a1d537efa9edbc7cd587f0c7fe1fb562f2673573
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110252186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e02b2ef1d29b6178c4a3e3624709a99e97340ab698c5e775ce331c7bedf2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:00:50 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 09:00:54 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 09:01:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:24 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:04:25 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:04:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:04:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:04:30 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:04:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df46e35960ab5067a8cd2519495461c8ccdab1967832f585f8491418b0d65a21`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f60bc837e811b0619520a8dca6c00a9a2f343907b72842d7753b599da1812`  
		Last Modified: Thu, 26 Jul 2018 09:18:55 GMT  
		Size: 73.9 MB (73925110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310af038ee5472eb08bc21339b73b4d4d926a01ce889b16401e5580d908ee1ec`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd1456a04559d0781c73ecd496c02aa1372336ef8ee30f9bbb6909a2eaff252`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
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
$ docker pull mariadb@sha256:d14e862a3a6006f3a93a5dcc29cdece9fa0acfa44e1a7bb4823dd8b1d06b49d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:9579fe9336805a7285ec298e0a970cce2e9d165f1fa2f7239e095159076572a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115199230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb34fb609ffd6d95bca5bf2661941566fd45b1d2bee621927af5e966672c9e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:46:56 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 25 Jul 2018 17:46:57 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Wed, 25 Jul 2018 17:46:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:47:34 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:47:34 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:47:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:47:36 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3466374c513dec95c39881d5e3ad9cb9a3235eaff2da45e4d23bb816f1323f3e`  
		Last Modified: Wed, 25 Jul 2018 17:59:59 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63b486b0a2feebce41b8948d353c72481c0c50e2745c5618fe0b5a674456ea`  
		Last Modified: Wed, 25 Jul 2018 18:00:25 GMT  
		Size: 75.0 MB (75045033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bf9a34cb777a54f2ab4c5181876593b5fb3c3c979059e476718f4b0d18678a`  
		Last Modified: Wed, 25 Jul 2018 18:00:00 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264ac021174d381a2b7b2de1af6310331f67b47e548c6b8b29d6999ad1db5cd7`  
		Last Modified: Wed, 25 Jul 2018 17:59:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:987311e17458816405e56525a1d537efa9edbc7cd587f0c7fe1fb562f2673573
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110252186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e02b2ef1d29b6178c4a3e3624709a99e97340ab698c5e775ce331c7bedf2d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 09:00:50 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 26 Jul 2018 09:00:54 GMT
ENV MARIADB_VERSION=1:10.2.16+maria~bionic
# Thu, 26 Jul 2018 09:01:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:04:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:04:24 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:04:25 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:04:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:04:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:04:30 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:04:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df46e35960ab5067a8cd2519495461c8ccdab1967832f585f8491418b0d65a21`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f60bc837e811b0619520a8dca6c00a9a2f343907b72842d7753b599da1812`  
		Last Modified: Thu, 26 Jul 2018 09:18:55 GMT  
		Size: 73.9 MB (73925110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310af038ee5472eb08bc21339b73b4d4d926a01ce889b16401e5580d908ee1ec`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd1456a04559d0781c73ecd496c02aa1372336ef8ee30f9bbb6909a2eaff252`  
		Last Modified: Thu, 26 Jul 2018 09:18:28 GMT  
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
$ docker pull mariadb@sha256:4b6940b93536063516380e8da9110c9f99732b05d3b6117900013a3eb393518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:abc5ac09a3748d3dda3329519601f8d34c6d5f3c2a94d6cced8b9eb651329495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116250545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ac58d92ba23cee7cbe2d6f06f8ae9b1ce5e2ba50cc913c42e33f9eb5f7f2d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:45:05 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 25 Jul 2018 17:45:06 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Wed, 25 Jul 2018 17:45:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:46:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:46:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:46:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:46:22 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:46:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b10d734776a68d4c4737fc55980499d43cc3ff40328ddfca394209419f02f6`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1708fd8c15fd36498ca895786b700d06989e0d037dfc90e14a5369f754761e6c`  
		Last Modified: Wed, 25 Jul 2018 17:55:55 GMT  
		Size: 76.1 MB (76096345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12b569942dbcbddc64d1cedf53d5217ec3f9a250f1fe00d9d524af22390da2`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce166c4c434d8130e84587f6c78221b9192dda6dfd8bdb4d1072c97f7cb36f`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a605e72442e168184da22038db3b1fd1c9ba8f15ea6d793022ac62c09ce2d433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111208842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87031ebceab607cb329bd4c8bec0391367bd5188ea077ceebc2e048653e4861c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:55:54 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:55:55 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:55:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:00:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:00:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:00:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:00:17 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:00:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8034d16930f22f7ce587c5e2a4726d2a7f826eaf1fabe731fd97e40498a586c3`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb9f584b882c5e8df89e449dcfb3e96db4bb48cf4425cfd3358b91854e1204`  
		Last Modified: Thu, 26 Jul 2018 09:14:43 GMT  
		Size: 74.9 MB (74881765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea767448f673e6ecbc1a9325467d4a4a9dcfca1fc725a8959cef21c8f52948b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba77682482bd3e59b0e2afbc9a3536a9f1a6d9f8859f2a13fa68dfe609864b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
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
$ docker pull mariadb@sha256:4b6940b93536063516380e8da9110c9f99732b05d3b6117900013a3eb393518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.8` - linux; amd64

```console
$ docker pull mariadb@sha256:abc5ac09a3748d3dda3329519601f8d34c6d5f3c2a94d6cced8b9eb651329495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116250545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ac58d92ba23cee7cbe2d6f06f8ae9b1ce5e2ba50cc913c42e33f9eb5f7f2d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:45:05 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 25 Jul 2018 17:45:06 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Wed, 25 Jul 2018 17:45:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:46:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:46:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:46:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:46:22 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:46:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b10d734776a68d4c4737fc55980499d43cc3ff40328ddfca394209419f02f6`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1708fd8c15fd36498ca895786b700d06989e0d037dfc90e14a5369f754761e6c`  
		Last Modified: Wed, 25 Jul 2018 17:55:55 GMT  
		Size: 76.1 MB (76096345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12b569942dbcbddc64d1cedf53d5217ec3f9a250f1fe00d9d524af22390da2`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce166c4c434d8130e84587f6c78221b9192dda6dfd8bdb4d1072c97f7cb36f`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.8` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a605e72442e168184da22038db3b1fd1c9ba8f15ea6d793022ac62c09ce2d433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111208842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87031ebceab607cb329bd4c8bec0391367bd5188ea077ceebc2e048653e4861c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:55:54 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:55:55 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:55:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:00:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:00:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:00:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:00:17 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:00:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8034d16930f22f7ce587c5e2a4726d2a7f826eaf1fabe731fd97e40498a586c3`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb9f584b882c5e8df89e449dcfb3e96db4bb48cf4425cfd3358b91854e1204`  
		Last Modified: Thu, 26 Jul 2018 09:14:43 GMT  
		Size: 74.9 MB (74881765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea767448f673e6ecbc1a9325467d4a4a9dcfca1fc725a8959cef21c8f52948b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba77682482bd3e59b0e2afbc9a3536a9f1a6d9f8859f2a13fa68dfe609864b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
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
$ docker pull mariadb@sha256:4b6940b93536063516380e8da9110c9f99732b05d3b6117900013a3eb393518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.8-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:abc5ac09a3748d3dda3329519601f8d34c6d5f3c2a94d6cced8b9eb651329495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116250545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ac58d92ba23cee7cbe2d6f06f8ae9b1ce5e2ba50cc913c42e33f9eb5f7f2d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:45:05 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 25 Jul 2018 17:45:06 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Wed, 25 Jul 2018 17:45:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:46:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:46:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:46:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:46:22 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:46:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b10d734776a68d4c4737fc55980499d43cc3ff40328ddfca394209419f02f6`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1708fd8c15fd36498ca895786b700d06989e0d037dfc90e14a5369f754761e6c`  
		Last Modified: Wed, 25 Jul 2018 17:55:55 GMT  
		Size: 76.1 MB (76096345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12b569942dbcbddc64d1cedf53d5217ec3f9a250f1fe00d9d524af22390da2`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce166c4c434d8130e84587f6c78221b9192dda6dfd8bdb4d1072c97f7cb36f`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.8-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a605e72442e168184da22038db3b1fd1c9ba8f15ea6d793022ac62c09ce2d433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111208842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87031ebceab607cb329bd4c8bec0391367bd5188ea077ceebc2e048653e4861c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:55:54 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:55:55 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:55:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:00:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:00:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:00:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:00:17 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:00:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8034d16930f22f7ce587c5e2a4726d2a7f826eaf1fabe731fd97e40498a586c3`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb9f584b882c5e8df89e449dcfb3e96db4bb48cf4425cfd3358b91854e1204`  
		Last Modified: Thu, 26 Jul 2018 09:14:43 GMT  
		Size: 74.9 MB (74881765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea767448f673e6ecbc1a9325467d4a4a9dcfca1fc725a8959cef21c8f52948b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba77682482bd3e59b0e2afbc9a3536a9f1a6d9f8859f2a13fa68dfe609864b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
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
$ docker pull mariadb@sha256:4b6940b93536063516380e8da9110c9f99732b05d3b6117900013a3eb393518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:abc5ac09a3748d3dda3329519601f8d34c6d5f3c2a94d6cced8b9eb651329495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116250545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ac58d92ba23cee7cbe2d6f06f8ae9b1ce5e2ba50cc913c42e33f9eb5f7f2d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:45:05 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 25 Jul 2018 17:45:06 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Wed, 25 Jul 2018 17:45:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:46:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:46:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:46:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:46:22 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:46:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b10d734776a68d4c4737fc55980499d43cc3ff40328ddfca394209419f02f6`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1708fd8c15fd36498ca895786b700d06989e0d037dfc90e14a5369f754761e6c`  
		Last Modified: Wed, 25 Jul 2018 17:55:55 GMT  
		Size: 76.1 MB (76096345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12b569942dbcbddc64d1cedf53d5217ec3f9a250f1fe00d9d524af22390da2`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce166c4c434d8130e84587f6c78221b9192dda6dfd8bdb4d1072c97f7cb36f`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a605e72442e168184da22038db3b1fd1c9ba8f15ea6d793022ac62c09ce2d433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111208842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87031ebceab607cb329bd4c8bec0391367bd5188ea077ceebc2e048653e4861c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:55:54 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:55:55 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:55:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:00:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:00:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:00:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:00:17 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:00:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8034d16930f22f7ce587c5e2a4726d2a7f826eaf1fabe731fd97e40498a586c3`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb9f584b882c5e8df89e449dcfb3e96db4bb48cf4425cfd3358b91854e1204`  
		Last Modified: Thu, 26 Jul 2018 09:14:43 GMT  
		Size: 74.9 MB (74881765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea767448f673e6ecbc1a9325467d4a4a9dcfca1fc725a8959cef21c8f52948b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba77682482bd3e59b0e2afbc9a3536a9f1a6d9f8859f2a13fa68dfe609864b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
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
$ docker pull mariadb@sha256:4b6940b93536063516380e8da9110c9f99732b05d3b6117900013a3eb393518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:abc5ac09a3748d3dda3329519601f8d34c6d5f3c2a94d6cced8b9eb651329495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116250545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ac58d92ba23cee7cbe2d6f06f8ae9b1ce5e2ba50cc913c42e33f9eb5f7f2d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:45:05 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 25 Jul 2018 17:45:06 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Wed, 25 Jul 2018 17:45:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:46:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:46:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:46:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:46:22 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:46:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b10d734776a68d4c4737fc55980499d43cc3ff40328ddfca394209419f02f6`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1708fd8c15fd36498ca895786b700d06989e0d037dfc90e14a5369f754761e6c`  
		Last Modified: Wed, 25 Jul 2018 17:55:55 GMT  
		Size: 76.1 MB (76096345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12b569942dbcbddc64d1cedf53d5217ec3f9a250f1fe00d9d524af22390da2`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce166c4c434d8130e84587f6c78221b9192dda6dfd8bdb4d1072c97f7cb36f`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a605e72442e168184da22038db3b1fd1c9ba8f15ea6d793022ac62c09ce2d433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111208842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87031ebceab607cb329bd4c8bec0391367bd5188ea077ceebc2e048653e4861c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:55:54 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:55:55 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:55:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:00:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:00:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:00:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:00:17 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:00:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8034d16930f22f7ce587c5e2a4726d2a7f826eaf1fabe731fd97e40498a586c3`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb9f584b882c5e8df89e449dcfb3e96db4bb48cf4425cfd3358b91854e1204`  
		Last Modified: Thu, 26 Jul 2018 09:14:43 GMT  
		Size: 74.9 MB (74881765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea767448f673e6ecbc1a9325467d4a4a9dcfca1fc725a8959cef21c8f52948b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba77682482bd3e59b0e2afbc9a3536a9f1a6d9f8859f2a13fa68dfe609864b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
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
$ docker pull mariadb@sha256:1d737502d2af12bc78d2db59d72e8dff62ba7c10b99598c1dd213aa3d5e4aa76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:56153d9751fd61b3fd3bdf8fb9dddd3097b30b1ff0b1e2dbabab3008d45f370b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7768378d3ffce5728d7f7730ffd22a8685e2921be4bc9d3ddb82de27e8f4a2`
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
# Wed, 25 Jul 2018 17:54:00 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Wed, 25 Jul 2018 17:54:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:54:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:54:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:54:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:54:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:54:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:54:39 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:54:39 GMT
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
	-	`sha256:968128a5672c1c08c79b60d5839e60e058ef2f1989dd414db42dcb278c733f2d`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6a2993aa80b23e6fb005ab7ec7daae5c76218cdb801b980aeaf0d06bef8da7`  
		Last Modified: Wed, 25 Jul 2018 18:06:32 GMT  
		Size: 45.3 MB (45253918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f32104e4a97a6fc2191232b6f3910c5142bf1dd8a9eb28002d9c8c08e983199`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51354596ca784308576cfe50a4b1744b1abdc39446b4d80d3ad2b20fec35668`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:4cda78688371b81b4f9822f5eac7229510aa59b0ac605a51678d1428dfffe93e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114529889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ba47967479c90d621501249941903e3494de6c6a817f78898b0146cef2c93`
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
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Thu, 26 Jul 2018 11:05:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:06:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:06:21 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:06:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:06:23 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:06:23 GMT
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
	-	`sha256:f1d94dca2713ea2af0410bb5cf949c77458115b3c4bfbc71cb2197a9833a7031`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff987b255897a98690d394b457929ca4dc06a7b53f3e74af95890ab6abc73c5`  
		Last Modified: Thu, 26 Jul 2018 11:09:11 GMT  
		Size: 43.8 MB (43804145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75ec3aee00f082340e7839e532a6b3f95656d4d5bc3f53505e0d98853d202ab`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0baac7cc48b95885e486f3a597356a402148eb6734056f9a4282249ddff8b`  
		Last Modified: Thu, 26 Jul 2018 11:08:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:1d737502d2af12bc78d2db59d72e8dff62ba7c10b99598c1dd213aa3d5e4aa76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:56153d9751fd61b3fd3bdf8fb9dddd3097b30b1ff0b1e2dbabab3008d45f370b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7768378d3ffce5728d7f7730ffd22a8685e2921be4bc9d3ddb82de27e8f4a2`
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
# Wed, 25 Jul 2018 17:54:00 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Wed, 25 Jul 2018 17:54:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:54:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:54:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:54:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:54:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:54:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:54:39 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:54:39 GMT
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
	-	`sha256:968128a5672c1c08c79b60d5839e60e058ef2f1989dd414db42dcb278c733f2d`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6a2993aa80b23e6fb005ab7ec7daae5c76218cdb801b980aeaf0d06bef8da7`  
		Last Modified: Wed, 25 Jul 2018 18:06:32 GMT  
		Size: 45.3 MB (45253918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f32104e4a97a6fc2191232b6f3910c5142bf1dd8a9eb28002d9c8c08e983199`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51354596ca784308576cfe50a4b1744b1abdc39446b4d80d3ad2b20fec35668`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:4cda78688371b81b4f9822f5eac7229510aa59b0ac605a51678d1428dfffe93e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114529889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ba47967479c90d621501249941903e3494de6c6a817f78898b0146cef2c93`
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
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Thu, 26 Jul 2018 11:05:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:06:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:06:21 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:06:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:06:23 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:06:23 GMT
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
	-	`sha256:f1d94dca2713ea2af0410bb5cf949c77458115b3c4bfbc71cb2197a9833a7031`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff987b255897a98690d394b457929ca4dc06a7b53f3e74af95890ab6abc73c5`  
		Last Modified: Thu, 26 Jul 2018 11:09:11 GMT  
		Size: 43.8 MB (43804145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75ec3aee00f082340e7839e532a6b3f95656d4d5bc3f53505e0d98853d202ab`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0baac7cc48b95885e486f3a597356a402148eb6734056f9a4282249ddff8b`  
		Last Modified: Thu, 26 Jul 2018 11:08:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.60`

```console
$ docker pull mariadb@sha256:1d737502d2af12bc78d2db59d72e8dff62ba7c10b99598c1dd213aa3d5e4aa76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `mariadb:5.5.60` - linux; amd64

```console
$ docker pull mariadb@sha256:56153d9751fd61b3fd3bdf8fb9dddd3097b30b1ff0b1e2dbabab3008d45f370b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7768378d3ffce5728d7f7730ffd22a8685e2921be4bc9d3ddb82de27e8f4a2`
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
# Wed, 25 Jul 2018 17:54:00 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Wed, 25 Jul 2018 17:54:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:54:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:54:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:54:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:54:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:54:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:54:39 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:54:39 GMT
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
	-	`sha256:968128a5672c1c08c79b60d5839e60e058ef2f1989dd414db42dcb278c733f2d`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6a2993aa80b23e6fb005ab7ec7daae5c76218cdb801b980aeaf0d06bef8da7`  
		Last Modified: Wed, 25 Jul 2018 18:06:32 GMT  
		Size: 45.3 MB (45253918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f32104e4a97a6fc2191232b6f3910c5142bf1dd8a9eb28002d9c8c08e983199`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51354596ca784308576cfe50a4b1744b1abdc39446b4d80d3ad2b20fec35668`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.60` - linux; 386

```console
$ docker pull mariadb@sha256:4cda78688371b81b4f9822f5eac7229510aa59b0ac605a51678d1428dfffe93e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114529889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ba47967479c90d621501249941903e3494de6c6a817f78898b0146cef2c93`
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
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Thu, 26 Jul 2018 11:05:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:06:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:06:21 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:06:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:06:23 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:06:23 GMT
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
	-	`sha256:f1d94dca2713ea2af0410bb5cf949c77458115b3c4bfbc71cb2197a9833a7031`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff987b255897a98690d394b457929ca4dc06a7b53f3e74af95890ab6abc73c5`  
		Last Modified: Thu, 26 Jul 2018 11:09:11 GMT  
		Size: 43.8 MB (43804145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75ec3aee00f082340e7839e532a6b3f95656d4d5bc3f53505e0d98853d202ab`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0baac7cc48b95885e486f3a597356a402148eb6734056f9a4282249ddff8b`  
		Last Modified: Thu, 26 Jul 2018 11:08:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.60-trusty`

```console
$ docker pull mariadb@sha256:1d737502d2af12bc78d2db59d72e8dff62ba7c10b99598c1dd213aa3d5e4aa76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `mariadb:5.5.60-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:56153d9751fd61b3fd3bdf8fb9dddd3097b30b1ff0b1e2dbabab3008d45f370b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7768378d3ffce5728d7f7730ffd22a8685e2921be4bc9d3ddb82de27e8f4a2`
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
# Wed, 25 Jul 2018 17:54:00 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Wed, 25 Jul 2018 17:54:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:54:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:54:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:54:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:54:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:54:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:54:39 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:54:39 GMT
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
	-	`sha256:968128a5672c1c08c79b60d5839e60e058ef2f1989dd414db42dcb278c733f2d`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6a2993aa80b23e6fb005ab7ec7daae5c76218cdb801b980aeaf0d06bef8da7`  
		Last Modified: Wed, 25 Jul 2018 18:06:32 GMT  
		Size: 45.3 MB (45253918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f32104e4a97a6fc2191232b6f3910c5142bf1dd8a9eb28002d9c8c08e983199`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51354596ca784308576cfe50a4b1744b1abdc39446b4d80d3ad2b20fec35668`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.60-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:4cda78688371b81b4f9822f5eac7229510aa59b0ac605a51678d1428dfffe93e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114529889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ba47967479c90d621501249941903e3494de6c6a817f78898b0146cef2c93`
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
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Thu, 26 Jul 2018 11:05:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:06:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:06:21 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:06:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:06:23 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:06:23 GMT
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
	-	`sha256:f1d94dca2713ea2af0410bb5cf949c77458115b3c4bfbc71cb2197a9833a7031`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff987b255897a98690d394b457929ca4dc06a7b53f3e74af95890ab6abc73c5`  
		Last Modified: Thu, 26 Jul 2018 11:09:11 GMT  
		Size: 43.8 MB (43804145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75ec3aee00f082340e7839e532a6b3f95656d4d5bc3f53505e0d98853d202ab`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0baac7cc48b95885e486f3a597356a402148eb6734056f9a4282249ddff8b`  
		Last Modified: Thu, 26 Jul 2018 11:08:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:1d737502d2af12bc78d2db59d72e8dff62ba7c10b99598c1dd213aa3d5e4aa76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:56153d9751fd61b3fd3bdf8fb9dddd3097b30b1ff0b1e2dbabab3008d45f370b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7768378d3ffce5728d7f7730ffd22a8685e2921be4bc9d3ddb82de27e8f4a2`
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
# Wed, 25 Jul 2018 17:54:00 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Wed, 25 Jul 2018 17:54:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:54:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:54:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:54:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:54:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:54:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:54:39 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:54:39 GMT
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
	-	`sha256:968128a5672c1c08c79b60d5839e60e058ef2f1989dd414db42dcb278c733f2d`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6a2993aa80b23e6fb005ab7ec7daae5c76218cdb801b980aeaf0d06bef8da7`  
		Last Modified: Wed, 25 Jul 2018 18:06:32 GMT  
		Size: 45.3 MB (45253918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f32104e4a97a6fc2191232b6f3910c5142bf1dd8a9eb28002d9c8c08e983199`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51354596ca784308576cfe50a4b1744b1abdc39446b4d80d3ad2b20fec35668`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:4cda78688371b81b4f9822f5eac7229510aa59b0ac605a51678d1428dfffe93e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114529889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ba47967479c90d621501249941903e3494de6c6a817f78898b0146cef2c93`
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
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Thu, 26 Jul 2018 11:05:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:06:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:06:21 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:06:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:06:23 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:06:23 GMT
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
	-	`sha256:f1d94dca2713ea2af0410bb5cf949c77458115b3c4bfbc71cb2197a9833a7031`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff987b255897a98690d394b457929ca4dc06a7b53f3e74af95890ab6abc73c5`  
		Last Modified: Thu, 26 Jul 2018 11:09:11 GMT  
		Size: 43.8 MB (43804145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75ec3aee00f082340e7839e532a6b3f95656d4d5bc3f53505e0d98853d202ab`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0baac7cc48b95885e486f3a597356a402148eb6734056f9a4282249ddff8b`  
		Last Modified: Thu, 26 Jul 2018 11:08:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:1d737502d2af12bc78d2db59d72e8dff62ba7c10b99598c1dd213aa3d5e4aa76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:56153d9751fd61b3fd3bdf8fb9dddd3097b30b1ff0b1e2dbabab3008d45f370b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118318522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7768378d3ffce5728d7f7730ffd22a8685e2921be4bc9d3ddb82de27e8f4a2`
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
# Wed, 25 Jul 2018 17:54:00 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Wed, 25 Jul 2018 17:54:01 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:54:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:54:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:54:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:54:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:54:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:54:39 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:54:39 GMT
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
	-	`sha256:968128a5672c1c08c79b60d5839e60e058ef2f1989dd414db42dcb278c733f2d`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6a2993aa80b23e6fb005ab7ec7daae5c76218cdb801b980aeaf0d06bef8da7`  
		Last Modified: Wed, 25 Jul 2018 18:06:32 GMT  
		Size: 45.3 MB (45253918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f32104e4a97a6fc2191232b6f3910c5142bf1dd8a9eb28002d9c8c08e983199`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51354596ca784308576cfe50a4b1744b1abdc39446b4d80d3ad2b20fec35668`  
		Last Modified: Wed, 25 Jul 2018 18:06:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:4cda78688371b81b4f9822f5eac7229510aa59b0ac605a51678d1428dfffe93e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114529889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ba47967479c90d621501249941903e3494de6c6a817f78898b0146cef2c93`
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
# Thu, 26 Jul 2018 11:05:52 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~trusty
# Thu, 26 Jul 2018 11:05:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 11:06:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	if [[ "$backupPackage" == percona* ]]; then 		case "${dpkgArch##*-}" in 			amd64|i386) ;; 			*) backupPackage= ;; 		esac; 	fi; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 11:06:21 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 11:06:21 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 11:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 11:06:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:06:23 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 11:06:23 GMT
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
	-	`sha256:f1d94dca2713ea2af0410bb5cf949c77458115b3c4bfbc71cb2197a9833a7031`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff987b255897a98690d394b457929ca4dc06a7b53f3e74af95890ab6abc73c5`  
		Last Modified: Thu, 26 Jul 2018 11:09:11 GMT  
		Size: 43.8 MB (43804145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75ec3aee00f082340e7839e532a6b3f95656d4d5bc3f53505e0d98853d202ab`  
		Last Modified: Thu, 26 Jul 2018 11:08:53 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc0baac7cc48b95885e486f3a597356a402148eb6734056f9a4282249ddff8b`  
		Last Modified: Thu, 26 Jul 2018 11:08:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:4b6940b93536063516380e8da9110c9f99732b05d3b6117900013a3eb393518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:abc5ac09a3748d3dda3329519601f8d34c6d5f3c2a94d6cced8b9eb651329495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116250545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ac58d92ba23cee7cbe2d6f06f8ae9b1ce5e2ba50cc913c42e33f9eb5f7f2d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:45:05 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 25 Jul 2018 17:45:06 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Wed, 25 Jul 2018 17:45:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:46:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:46:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:46:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:46:22 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:46:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b10d734776a68d4c4737fc55980499d43cc3ff40328ddfca394209419f02f6`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1708fd8c15fd36498ca895786b700d06989e0d037dfc90e14a5369f754761e6c`  
		Last Modified: Wed, 25 Jul 2018 17:55:55 GMT  
		Size: 76.1 MB (76096345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12b569942dbcbddc64d1cedf53d5217ec3f9a250f1fe00d9d524af22390da2`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce166c4c434d8130e84587f6c78221b9192dda6dfd8bdb4d1072c97f7cb36f`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a605e72442e168184da22038db3b1fd1c9ba8f15ea6d793022ac62c09ce2d433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111208842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87031ebceab607cb329bd4c8bec0391367bd5188ea077ceebc2e048653e4861c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:55:54 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:55:55 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:55:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:00:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:00:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:00:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:00:17 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:00:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8034d16930f22f7ce587c5e2a4726d2a7f826eaf1fabe731fd97e40498a586c3`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb9f584b882c5e8df89e449dcfb3e96db4bb48cf4425cfd3358b91854e1204`  
		Last Modified: Thu, 26 Jul 2018 09:14:43 GMT  
		Size: 74.9 MB (74881765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea767448f673e6ecbc1a9325467d4a4a9dcfca1fc725a8959cef21c8f52948b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba77682482bd3e59b0e2afbc9a3536a9f1a6d9f8859f2a13fa68dfe609864b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
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
$ docker pull mariadb@sha256:4b6940b93536063516380e8da9110c9f99732b05d3b6117900013a3eb393518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:abc5ac09a3748d3dda3329519601f8d34c6d5f3c2a94d6cced8b9eb651329495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116250545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ac58d92ba23cee7cbe2d6f06f8ae9b1ce5e2ba50cc913c42e33f9eb5f7f2d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Wed, 25 Jul 2018 17:43:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 25 Jul 2018 17:44:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:44:19 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Jul 2018 17:44:39 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 25 Jul 2018 17:44:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 25 Jul 2018 17:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 17:45:04 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 25 Jul 2018 17:45:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 25 Jul 2018 17:45:05 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 25 Jul 2018 17:45:06 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Wed, 25 Jul 2018 17:45:07 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Jul 2018 17:46:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Jul 2018 17:46:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Jul 2018 17:46:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 25 Jul 2018 17:46:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Jul 2018 17:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:46:22 GMT
EXPOSE 3306/tcp
# Wed, 25 Jul 2018 17:46:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb1f9642ee82bc6a4509f9d2ed0cc35a5b0637ec919a9c7ba3aee391b15add3`  
		Last Modified: Wed, 25 Jul 2018 17:55:33 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf498b7e2c7e4385f0b75acfa272b4ecab97c3ecfa988161b963d3dc3fdcd8`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 4.8 MB (4803506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b91d76c92ba080e56f01802a102e8e808873f807b94c5ba3c6890234f910e`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 862.9 KB (862855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc68c3e91f169c8453ddc79bc7b1efda81db62cb19dab1292954e712dc67f65`  
		Last Modified: Wed, 25 Jul 2018 17:55:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc9f4f90975ec896608c16a693f4403b8c78190df1358445694c3d1551b803d`  
		Last Modified: Wed, 25 Jul 2018 17:55:32 GMT  
		Size: 3.0 MB (2956526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd6246f59d28b222de0789b06fca0d70dbda56a7bd4d80e20fe1f7b1dd124fa`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b10d734776a68d4c4737fc55980499d43cc3ff40328ddfca394209419f02f6`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1708fd8c15fd36498ca895786b700d06989e0d037dfc90e14a5369f754761e6c`  
		Last Modified: Wed, 25 Jul 2018 17:55:55 GMT  
		Size: 76.1 MB (76096345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12b569942dbcbddc64d1cedf53d5217ec3f9a250f1fe00d9d524af22390da2`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce166c4c434d8130e84587f6c78221b9192dda6dfd8bdb4d1072c97f7cb36f`  
		Last Modified: Wed, 25 Jul 2018 17:55:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a605e72442e168184da22038db3b1fd1c9ba8f15ea6d793022ac62c09ce2d433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111208842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87031ebceab607cb329bd4c8bec0391367bd5188ea077ceebc2e048653e4861c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 08:53:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 26 Jul 2018 08:54:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:54:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Jul 2018 08:55:17 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 26 Jul 2018 08:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Jul 2018 08:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 08:55:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 26 Jul 2018 08:55:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 26 Jul 2018 08:55:54 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 26 Jul 2018 08:55:55 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~bionic
# Thu, 26 Jul 2018 08:55:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 26 Jul 2018 09:00:00 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 26 Jul 2018 09:00:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 26 Jul 2018 09:00:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 26 Jul 2018 09:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Jul 2018 09:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:00:17 GMT
EXPOSE 3306/tcp
# Thu, 26 Jul 2018 09:00:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f51073722976089223dc7f47cd75a3ac6aa60dc518791d700600746e81e761`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f85af83b7b3b2d0ffc703f3a6413537c593e045852919c3667f34ccea3c1e6d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 4.6 MB (4585463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618a8a363e03317cdc51f3a3604dd42286cb9fb7bc43bc8ed2122b04ea461db1`  
		Last Modified: Thu, 26 Jul 2018 09:14:17 GMT  
		Size: 828.6 KB (828614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a55e2dfd00232002a3bf8e23f3269257294c263e7df16f421de3041c6c0bf`  
		Last Modified: Thu, 26 Jul 2018 09:14:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98827b07fe939c497364b8237379976639284e926bc8374716005e063276660d`  
		Last Modified: Thu, 26 Jul 2018 09:14:18 GMT  
		Size: 2.7 MB (2697348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65eec5653380daa0dfc7db6b0fc88add83ee0ae3452e65e7d9b6cdb236ca9fb`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8034d16930f22f7ce587c5e2a4726d2a7f826eaf1fabe731fd97e40498a586c3`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb9f584b882c5e8df89e449dcfb3e96db4bb48cf4425cfd3358b91854e1204`  
		Last Modified: Thu, 26 Jul 2018 09:14:43 GMT  
		Size: 74.9 MB (74881765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea767448f673e6ecbc1a9325467d4a4a9dcfca1fc725a8959cef21c8f52948b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba77682482bd3e59b0e2afbc9a3536a9f1a6d9f8859f2a13fa68dfe609864b`  
		Last Modified: Thu, 26 Jul 2018 09:14:14 GMT  
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
