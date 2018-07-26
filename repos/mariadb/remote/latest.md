## `mariadb:latest`

```console
$ docker pull mariadb@sha256:bc6276091b9a3ccfb28a3d7ae4cf949d92e6242d683263c5f0b57aed56edb37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

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
