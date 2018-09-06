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
$ docker pull mariadb@sha256:b7894bd08e5752acdd41fea654cb89467c99e67b8293975bb5d787b27e66ce1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:50829ad0fdb382e9fe5bc87afeedc585512b047ca92492825672defa9d565dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199cc294e3168cac8c8f5499649d258a9d5fbd6700d7c899d9dded911d0b1c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 05 Sep 2018 23:14:05 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 05 Sep 2018 23:14:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:14:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:14:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:14:38 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:14:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d52b11dd31df10b83b8e142b5c147fcd9c3d8ddb4dd13ea090b8ac96ea154a`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c7b70556f3ef37f73050ff9ca08d66808d468eb09fbc3bc9c8b6d4a0e43473`  
		Last Modified: Wed, 05 Sep 2018 23:18:54 GMT  
		Size: 74.2 MB (74183479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b39f2f89a92d76319758a3f39636307faff88a4f943aac91dff110c0d792c`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41480b9319d7fc39776ea8daa6bb4090c9fb8774877f632463451f1928d78478`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bb3da9b2d003b528aee1cd7b3610d057574ac715acbdd07c282e63bc4acb9223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109634178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c5d6740eff09ab6afc46994030cacaa492acd45d6afe02c927fd23170f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:09:55 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 22:09:56 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 22:09:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:11:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:11:29 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:11:30 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:11:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:11:52 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:11:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd230e77ad7931d9afc0ae5dbbd67601ebae09321311d734e4f6ecc83675b4`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e572e9d2bc5140b8535321163e614359a0d48098ddf9f412eaac2a2a04525`  
		Last Modified: Thu, 23 Aug 2018 22:19:08 GMT  
		Size: 73.1 MB (73072412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0f75587012db4d582b5662078232f827131e093cf75ca8d56a2ebfc7700e97`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8b36c0808a70ed12cbefdfebb19970ebc1f6b2f9bbd1db35e359e6d4c4a01`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7a5cba569002317cba63d01ecc2899763716faf42bc39da24ca4dd96230524fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121645522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606cb6633b616a22f33ed397e8e002c0816c6e1f4d485706c096dabaad61cf53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 15:45:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:47:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:47:43 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:47:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5927af8993fde1a3ed81ce7ed5f1df08ad326301733196f4083a8e208d90a02`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c0f40150a788f87cd7f48ccb5fa7de95d7d50a32035cb4984ebc6782edcae`  
		Last Modified: Thu, 23 Aug 2018 16:17:47 GMT  
		Size: 77.1 MB (77085714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa4daa0c5f9e0e1d9f5b42c1c775b8cad90c84232d0262940f6551cc73659dd`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc319c9268edf5544cfe478730005139b87f4cc913b664e67f3266ced478fc6`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:603c353b18c8974ce4e7345ea77c59142b170e3852d749887c78241517584f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:e5e589938b6b363b4feeda72ec77ba4ab2b60c9a33a52baf06e8abcf6b68e55e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0934ef7a89a4dda22a21c73d07385920298338a5482359e725c3c100a5b4344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:16:24 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:16:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:16:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:16:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:16:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:16:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:16:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:16:48 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 05 Sep 2018 23:16:49 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Wed, 05 Sep 2018 23:16:49 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:17:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:17:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:17:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:17:27 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:17:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7483757ef747f9c0310f012084dad2cd6e231480edc32242ab1f1e7c16e1205`  
		Last Modified: Wed, 05 Sep 2018 23:20:55 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5948eb169f43c3d2bff1ff34549c480e51db2a191df654171170a60ade967b`  
		Last Modified: Wed, 05 Sep 2018 23:20:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f8e94ef3f23355198fbb3c29051a2bf99693438edac5afce0bd8b38038b2`  
		Last Modified: Wed, 05 Sep 2018 23:20:55 GMT  
		Size: 840.4 KB (840396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bc8ca526343d0cd3f9d5722b60d5f5f37d6005aa732b0e021625b224168ae5`  
		Last Modified: Wed, 05 Sep 2018 23:20:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b894cbfe1e25b3c8d426e793b5ace0160dbd6f17ed4883825a01faa6d7390`  
		Last Modified: Wed, 05 Sep 2018 23:20:56 GMT  
		Size: 7.3 MB (7319226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de28b10b9af40099473bfb1df8a37ab4f99132e9dea500333014da33a2d27d5b`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 25.1 KB (25126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07daa6abc7a0cfcb1a9bde17d1f0be30a7e1c5dbb37e325b6ea1802e754e430a`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8548bacd4cac19f5fef74dd059d6a9751f5986e86162e3cb53b70a28450575f`  
		Last Modified: Wed, 05 Sep 2018 23:21:07 GMT  
		Size: 63.3 MB (63347365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c245e8142bdc373a02607b4c90d23b6ae8332fe13fbb52948645661aae0078`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a430ceed57be3c3351ece3e29a209a29bca515d4b85f4cc186acf36c75c60d04`  
		Last Modified: Wed, 05 Sep 2018 23:20:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:be199c201696deff28182b411878cf4e8d51d0082bfa89083fd5610e862230dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113746020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2284a30120c739f30507c6dd63b361bce0b9dac98fe121e393cf0de84794efc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:55:56 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Thu, 23 Aug 2018 15:56:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:56:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:56:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:56:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:56:08 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:52:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:52:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:52:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:52:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:52:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:53:24 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:53:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:53:26 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 23 Aug 2018 18:53:27 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 23 Aug 2018 18:53:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:54:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:54:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:54:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:54:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:54:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:54:46 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:54:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908456bb100430678c2f5d49c9c216260c4b5dfe745a94c1ed92fe97b1a01771`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186622ef44de7a2bec81893dfaf016b9b50afe37edabe298892670046190fec`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f510d815c12855dc5ea55f5d264ac661d788831749d8c17e18e556e3cf6096`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e211bdcc20115eb5109160072716547977bdfedbe96cc7887a0d0c4b65551`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941f294d977bd03c3761f13ac6fd183e26813f2074907b9c1f3ba86e0f1f537d`  
		Last Modified: Thu, 23 Aug 2018 18:58:16 GMT  
		Size: 2.0 KB (1981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405dda851a4ee8222cf2fc3bc67afa5777db2bc9077b9b447a17db7c63754b4`  
		Last Modified: Thu, 23 Aug 2018 18:58:15 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43575c56237ad9c6b2ec5627c26355906a78d61ac69da658bd72bd05397d1d68`  
		Last Modified: Thu, 23 Aug 2018 18:58:15 GMT  
		Size: 819.3 KB (819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602097c18b953dea3312975ecdd94390198f76b60469dbc0db2af3a33d49fc06`  
		Last Modified: Thu, 23 Aug 2018 18:58:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ccabdc57cf73236deba3675b4b0ded2de06b8376e486a796a8ca4343cd4a77`  
		Last Modified: Thu, 23 Aug 2018 18:58:17 GMT  
		Size: 7.4 MB (7447047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b768cc00762d6f32f3b8f5074462f4eff9045fea83fc2d47d6f0d09862b51`  
		Last Modified: Thu, 23 Aug 2018 18:58:12 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4bd919a5059b9d745e5481ef1ca97ebd0365ed97af1d3733e13dbb0ec5476f`  
		Last Modified: Thu, 23 Aug 2018 18:58:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01e55e75a3ae797bd9ec98afec08a34136aded9d3872ae5666b99a1c36b5810`  
		Last Modified: Thu, 23 Aug 2018 18:58:40 GMT  
		Size: 61.9 MB (61926826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf032518712732ee3a324e46ce0c329274ca3a2adb0955cb8593eacce398895`  
		Last Modified: Thu, 23 Aug 2018 18:58:11 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb2c10510df46bc7bf04f894a6b38f865796f4a96a29463ab1462ce97593e26`  
		Last Modified: Thu, 23 Aug 2018 18:58:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bb8e8377be0c649eb72986fadd0dcb67c58a6bd5a23f7b5d96b376c3ebbc37f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108236732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa80cb3ba9dd7131cf3a67af201a6f0678f1f9788231fd5f5f6585cca79af75f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:55:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:57:45 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:57:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:00:26 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:00:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:04:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:04:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:04:30 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 23 Aug 2018 16:04:31 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 23 Aug 2018 16:04:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:10:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:10:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:10:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:10:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:10:51 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:10:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa0203dc95ee7198fc4a7a448ec52818f060e2dc5ed19194b1205c3e721e19`  
		Last Modified: Thu, 23 Aug 2018 16:21:01 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241fb8418b98dd36ef027ad16ee04e2e59e1c64b70b54e2ee0a6d018482f42df`  
		Last Modified: Thu, 23 Aug 2018 16:20:58 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0104743263a37926eb11fa73a6b3c058ecc5fd540fd0fffb6139c55de5ae4e46`  
		Last Modified: Thu, 23 Aug 2018 16:20:59 GMT  
		Size: 808.9 KB (808901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86889b7a02489a564b388df181f30c47977a8a1590b8307ca3c5d6a8b22cf3ae`  
		Last Modified: Thu, 23 Aug 2018 16:20:58 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929bf3ac5ea4f3c7ddeb81041f7ebdadf30f7b58a4e55a68810bfea299bacc02`  
		Last Modified: Thu, 23 Aug 2018 16:21:00 GMT  
		Size: 7.2 MB (7209511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e1ed6dcac301850a71787bab96595eca90b7745fcc07f8f6eaf66f81b48573`  
		Last Modified: Thu, 23 Aug 2018 16:20:55 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f0152bf96dc11a3b83cbe8c421da537509ed2bf9f99d321e52c5609da4629c`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb91a2dd23e0ae98e3324b315723fdbbd8e2a1d8d58584e47232b18a901565f`  
		Last Modified: Thu, 23 Aug 2018 16:21:10 GMT  
		Size: 54.6 MB (54589869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77781404938fdb28426e67bbfed5f39410d17e7722c7459e873a1652a7400203`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb93f4b2f057d7affa06c0ee6975c3d6016bd21cbdf25b257e5925e8c4760976`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.36`

```console
$ docker pull mariadb@sha256:603c353b18c8974ce4e7345ea77c59142b170e3852d749887c78241517584f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.36` - linux; amd64

```console
$ docker pull mariadb@sha256:e5e589938b6b363b4feeda72ec77ba4ab2b60c9a33a52baf06e8abcf6b68e55e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0934ef7a89a4dda22a21c73d07385920298338a5482359e725c3c100a5b4344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:16:24 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:16:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:16:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:16:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:16:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:16:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:16:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:16:48 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 05 Sep 2018 23:16:49 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Wed, 05 Sep 2018 23:16:49 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:17:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:17:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:17:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:17:27 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:17:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7483757ef747f9c0310f012084dad2cd6e231480edc32242ab1f1e7c16e1205`  
		Last Modified: Wed, 05 Sep 2018 23:20:55 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5948eb169f43c3d2bff1ff34549c480e51db2a191df654171170a60ade967b`  
		Last Modified: Wed, 05 Sep 2018 23:20:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f8e94ef3f23355198fbb3c29051a2bf99693438edac5afce0bd8b38038b2`  
		Last Modified: Wed, 05 Sep 2018 23:20:55 GMT  
		Size: 840.4 KB (840396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bc8ca526343d0cd3f9d5722b60d5f5f37d6005aa732b0e021625b224168ae5`  
		Last Modified: Wed, 05 Sep 2018 23:20:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b894cbfe1e25b3c8d426e793b5ace0160dbd6f17ed4883825a01faa6d7390`  
		Last Modified: Wed, 05 Sep 2018 23:20:56 GMT  
		Size: 7.3 MB (7319226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de28b10b9af40099473bfb1df8a37ab4f99132e9dea500333014da33a2d27d5b`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 25.1 KB (25126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07daa6abc7a0cfcb1a9bde17d1f0be30a7e1c5dbb37e325b6ea1802e754e430a`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8548bacd4cac19f5fef74dd059d6a9751f5986e86162e3cb53b70a28450575f`  
		Last Modified: Wed, 05 Sep 2018 23:21:07 GMT  
		Size: 63.3 MB (63347365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c245e8142bdc373a02607b4c90d23b6ae8332fe13fbb52948645661aae0078`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a430ceed57be3c3351ece3e29a209a29bca515d4b85f4cc186acf36c75c60d04`  
		Last Modified: Wed, 05 Sep 2018 23:20:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36` - linux; 386

```console
$ docker pull mariadb@sha256:be199c201696deff28182b411878cf4e8d51d0082bfa89083fd5610e862230dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113746020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2284a30120c739f30507c6dd63b361bce0b9dac98fe121e393cf0de84794efc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:55:56 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Thu, 23 Aug 2018 15:56:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:56:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:56:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:56:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:56:08 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:52:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:52:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:52:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:52:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:52:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:53:24 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:53:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:53:26 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 23 Aug 2018 18:53:27 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 23 Aug 2018 18:53:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:54:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:54:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:54:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:54:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:54:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:54:46 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:54:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908456bb100430678c2f5d49c9c216260c4b5dfe745a94c1ed92fe97b1a01771`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186622ef44de7a2bec81893dfaf016b9b50afe37edabe298892670046190fec`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f510d815c12855dc5ea55f5d264ac661d788831749d8c17e18e556e3cf6096`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e211bdcc20115eb5109160072716547977bdfedbe96cc7887a0d0c4b65551`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941f294d977bd03c3761f13ac6fd183e26813f2074907b9c1f3ba86e0f1f537d`  
		Last Modified: Thu, 23 Aug 2018 18:58:16 GMT  
		Size: 2.0 KB (1981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405dda851a4ee8222cf2fc3bc67afa5777db2bc9077b9b447a17db7c63754b4`  
		Last Modified: Thu, 23 Aug 2018 18:58:15 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43575c56237ad9c6b2ec5627c26355906a78d61ac69da658bd72bd05397d1d68`  
		Last Modified: Thu, 23 Aug 2018 18:58:15 GMT  
		Size: 819.3 KB (819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602097c18b953dea3312975ecdd94390198f76b60469dbc0db2af3a33d49fc06`  
		Last Modified: Thu, 23 Aug 2018 18:58:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ccabdc57cf73236deba3675b4b0ded2de06b8376e486a796a8ca4343cd4a77`  
		Last Modified: Thu, 23 Aug 2018 18:58:17 GMT  
		Size: 7.4 MB (7447047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b768cc00762d6f32f3b8f5074462f4eff9045fea83fc2d47d6f0d09862b51`  
		Last Modified: Thu, 23 Aug 2018 18:58:12 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4bd919a5059b9d745e5481ef1ca97ebd0365ed97af1d3733e13dbb0ec5476f`  
		Last Modified: Thu, 23 Aug 2018 18:58:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01e55e75a3ae797bd9ec98afec08a34136aded9d3872ae5666b99a1c36b5810`  
		Last Modified: Thu, 23 Aug 2018 18:58:40 GMT  
		Size: 61.9 MB (61926826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf032518712732ee3a324e46ce0c329274ca3a2adb0955cb8593eacce398895`  
		Last Modified: Thu, 23 Aug 2018 18:58:11 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb2c10510df46bc7bf04f894a6b38f865796f4a96a29463ab1462ce97593e26`  
		Last Modified: Thu, 23 Aug 2018 18:58:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bb8e8377be0c649eb72986fadd0dcb67c58a6bd5a23f7b5d96b376c3ebbc37f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108236732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa80cb3ba9dd7131cf3a67af201a6f0678f1f9788231fd5f5f6585cca79af75f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:55:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:57:45 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:57:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:00:26 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:00:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:04:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:04:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:04:30 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 23 Aug 2018 16:04:31 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 23 Aug 2018 16:04:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:10:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:10:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:10:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:10:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:10:51 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:10:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa0203dc95ee7198fc4a7a448ec52818f060e2dc5ed19194b1205c3e721e19`  
		Last Modified: Thu, 23 Aug 2018 16:21:01 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241fb8418b98dd36ef027ad16ee04e2e59e1c64b70b54e2ee0a6d018482f42df`  
		Last Modified: Thu, 23 Aug 2018 16:20:58 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0104743263a37926eb11fa73a6b3c058ecc5fd540fd0fffb6139c55de5ae4e46`  
		Last Modified: Thu, 23 Aug 2018 16:20:59 GMT  
		Size: 808.9 KB (808901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86889b7a02489a564b388df181f30c47977a8a1590b8307ca3c5d6a8b22cf3ae`  
		Last Modified: Thu, 23 Aug 2018 16:20:58 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929bf3ac5ea4f3c7ddeb81041f7ebdadf30f7b58a4e55a68810bfea299bacc02`  
		Last Modified: Thu, 23 Aug 2018 16:21:00 GMT  
		Size: 7.2 MB (7209511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e1ed6dcac301850a71787bab96595eca90b7745fcc07f8f6eaf66f81b48573`  
		Last Modified: Thu, 23 Aug 2018 16:20:55 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f0152bf96dc11a3b83cbe8c421da537509ed2bf9f99d321e52c5609da4629c`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb91a2dd23e0ae98e3324b315723fdbbd8e2a1d8d58584e47232b18a901565f`  
		Last Modified: Thu, 23 Aug 2018 16:21:10 GMT  
		Size: 54.6 MB (54589869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77781404938fdb28426e67bbfed5f39410d17e7722c7459e873a1652a7400203`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb93f4b2f057d7affa06c0ee6975c3d6016bd21cbdf25b257e5925e8c4760976`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.36-xenial`

```console
$ docker pull mariadb@sha256:603c353b18c8974ce4e7345ea77c59142b170e3852d749887c78241517584f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.36-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:e5e589938b6b363b4feeda72ec77ba4ab2b60c9a33a52baf06e8abcf6b68e55e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0934ef7a89a4dda22a21c73d07385920298338a5482359e725c3c100a5b4344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:16:24 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:16:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:16:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:16:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:16:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:16:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:16:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:16:48 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 05 Sep 2018 23:16:49 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Wed, 05 Sep 2018 23:16:49 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:17:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:17:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:17:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:17:27 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:17:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7483757ef747f9c0310f012084dad2cd6e231480edc32242ab1f1e7c16e1205`  
		Last Modified: Wed, 05 Sep 2018 23:20:55 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5948eb169f43c3d2bff1ff34549c480e51db2a191df654171170a60ade967b`  
		Last Modified: Wed, 05 Sep 2018 23:20:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f8e94ef3f23355198fbb3c29051a2bf99693438edac5afce0bd8b38038b2`  
		Last Modified: Wed, 05 Sep 2018 23:20:55 GMT  
		Size: 840.4 KB (840396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bc8ca526343d0cd3f9d5722b60d5f5f37d6005aa732b0e021625b224168ae5`  
		Last Modified: Wed, 05 Sep 2018 23:20:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b894cbfe1e25b3c8d426e793b5ace0160dbd6f17ed4883825a01faa6d7390`  
		Last Modified: Wed, 05 Sep 2018 23:20:56 GMT  
		Size: 7.3 MB (7319226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de28b10b9af40099473bfb1df8a37ab4f99132e9dea500333014da33a2d27d5b`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 25.1 KB (25126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07daa6abc7a0cfcb1a9bde17d1f0be30a7e1c5dbb37e325b6ea1802e754e430a`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8548bacd4cac19f5fef74dd059d6a9751f5986e86162e3cb53b70a28450575f`  
		Last Modified: Wed, 05 Sep 2018 23:21:07 GMT  
		Size: 63.3 MB (63347365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c245e8142bdc373a02607b4c90d23b6ae8332fe13fbb52948645661aae0078`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a430ceed57be3c3351ece3e29a209a29bca515d4b85f4cc186acf36c75c60d04`  
		Last Modified: Wed, 05 Sep 2018 23:20:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:be199c201696deff28182b411878cf4e8d51d0082bfa89083fd5610e862230dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113746020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2284a30120c739f30507c6dd63b361bce0b9dac98fe121e393cf0de84794efc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:55:56 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Thu, 23 Aug 2018 15:56:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:56:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:56:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:56:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:56:08 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:52:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:52:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:52:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:52:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:52:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:53:24 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:53:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:53:26 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 23 Aug 2018 18:53:27 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 23 Aug 2018 18:53:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:54:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:54:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:54:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:54:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:54:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:54:46 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:54:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908456bb100430678c2f5d49c9c216260c4b5dfe745a94c1ed92fe97b1a01771`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186622ef44de7a2bec81893dfaf016b9b50afe37edabe298892670046190fec`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f510d815c12855dc5ea55f5d264ac661d788831749d8c17e18e556e3cf6096`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e211bdcc20115eb5109160072716547977bdfedbe96cc7887a0d0c4b65551`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941f294d977bd03c3761f13ac6fd183e26813f2074907b9c1f3ba86e0f1f537d`  
		Last Modified: Thu, 23 Aug 2018 18:58:16 GMT  
		Size: 2.0 KB (1981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405dda851a4ee8222cf2fc3bc67afa5777db2bc9077b9b447a17db7c63754b4`  
		Last Modified: Thu, 23 Aug 2018 18:58:15 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43575c56237ad9c6b2ec5627c26355906a78d61ac69da658bd72bd05397d1d68`  
		Last Modified: Thu, 23 Aug 2018 18:58:15 GMT  
		Size: 819.3 KB (819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602097c18b953dea3312975ecdd94390198f76b60469dbc0db2af3a33d49fc06`  
		Last Modified: Thu, 23 Aug 2018 18:58:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ccabdc57cf73236deba3675b4b0ded2de06b8376e486a796a8ca4343cd4a77`  
		Last Modified: Thu, 23 Aug 2018 18:58:17 GMT  
		Size: 7.4 MB (7447047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b768cc00762d6f32f3b8f5074462f4eff9045fea83fc2d47d6f0d09862b51`  
		Last Modified: Thu, 23 Aug 2018 18:58:12 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4bd919a5059b9d745e5481ef1ca97ebd0365ed97af1d3733e13dbb0ec5476f`  
		Last Modified: Thu, 23 Aug 2018 18:58:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01e55e75a3ae797bd9ec98afec08a34136aded9d3872ae5666b99a1c36b5810`  
		Last Modified: Thu, 23 Aug 2018 18:58:40 GMT  
		Size: 61.9 MB (61926826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf032518712732ee3a324e46ce0c329274ca3a2adb0955cb8593eacce398895`  
		Last Modified: Thu, 23 Aug 2018 18:58:11 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb2c10510df46bc7bf04f894a6b38f865796f4a96a29463ab1462ce97593e26`  
		Last Modified: Thu, 23 Aug 2018 18:58:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.36-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bb8e8377be0c649eb72986fadd0dcb67c58a6bd5a23f7b5d96b376c3ebbc37f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108236732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa80cb3ba9dd7131cf3a67af201a6f0678f1f9788231fd5f5f6585cca79af75f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:55:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:57:45 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:57:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:00:26 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:00:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:04:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:04:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:04:30 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 23 Aug 2018 16:04:31 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 23 Aug 2018 16:04:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:10:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:10:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:10:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:10:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:10:51 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:10:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa0203dc95ee7198fc4a7a448ec52818f060e2dc5ed19194b1205c3e721e19`  
		Last Modified: Thu, 23 Aug 2018 16:21:01 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241fb8418b98dd36ef027ad16ee04e2e59e1c64b70b54e2ee0a6d018482f42df`  
		Last Modified: Thu, 23 Aug 2018 16:20:58 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0104743263a37926eb11fa73a6b3c058ecc5fd540fd0fffb6139c55de5ae4e46`  
		Last Modified: Thu, 23 Aug 2018 16:20:59 GMT  
		Size: 808.9 KB (808901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86889b7a02489a564b388df181f30c47977a8a1590b8307ca3c5d6a8b22cf3ae`  
		Last Modified: Thu, 23 Aug 2018 16:20:58 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929bf3ac5ea4f3c7ddeb81041f7ebdadf30f7b58a4e55a68810bfea299bacc02`  
		Last Modified: Thu, 23 Aug 2018 16:21:00 GMT  
		Size: 7.2 MB (7209511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e1ed6dcac301850a71787bab96595eca90b7745fcc07f8f6eaf66f81b48573`  
		Last Modified: Thu, 23 Aug 2018 16:20:55 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f0152bf96dc11a3b83cbe8c421da537509ed2bf9f99d321e52c5609da4629c`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb91a2dd23e0ae98e3324b315723fdbbd8e2a1d8d58584e47232b18a901565f`  
		Last Modified: Thu, 23 Aug 2018 16:21:10 GMT  
		Size: 54.6 MB (54589869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77781404938fdb28426e67bbfed5f39410d17e7722c7459e873a1652a7400203`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb93f4b2f057d7affa06c0ee6975c3d6016bd21cbdf25b257e5925e8c4760976`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:603c353b18c8974ce4e7345ea77c59142b170e3852d749887c78241517584f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:e5e589938b6b363b4feeda72ec77ba4ab2b60c9a33a52baf06e8abcf6b68e55e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0934ef7a89a4dda22a21c73d07385920298338a5482359e725c3c100a5b4344`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:16:24 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:16:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:16:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:16:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:16:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:16:47 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:16:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:16:48 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 05 Sep 2018 23:16:49 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Wed, 05 Sep 2018 23:16:49 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:17:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:17:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:17:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:17:27 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:17:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7483757ef747f9c0310f012084dad2cd6e231480edc32242ab1f1e7c16e1205`  
		Last Modified: Wed, 05 Sep 2018 23:20:55 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5948eb169f43c3d2bff1ff34549c480e51db2a191df654171170a60ade967b`  
		Last Modified: Wed, 05 Sep 2018 23:20:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9638f8e94ef3f23355198fbb3c29051a2bf99693438edac5afce0bd8b38038b2`  
		Last Modified: Wed, 05 Sep 2018 23:20:55 GMT  
		Size: 840.4 KB (840396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bc8ca526343d0cd3f9d5722b60d5f5f37d6005aa732b0e021625b224168ae5`  
		Last Modified: Wed, 05 Sep 2018 23:20:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b894cbfe1e25b3c8d426e793b5ace0160dbd6f17ed4883825a01faa6d7390`  
		Last Modified: Wed, 05 Sep 2018 23:20:56 GMT  
		Size: 7.3 MB (7319226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de28b10b9af40099473bfb1df8a37ab4f99132e9dea500333014da33a2d27d5b`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 25.1 KB (25126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07daa6abc7a0cfcb1a9bde17d1f0be30a7e1c5dbb37e325b6ea1802e754e430a`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8548bacd4cac19f5fef74dd059d6a9751f5986e86162e3cb53b70a28450575f`  
		Last Modified: Wed, 05 Sep 2018 23:21:07 GMT  
		Size: 63.3 MB (63347365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c245e8142bdc373a02607b4c90d23b6ae8332fe13fbb52948645661aae0078`  
		Last Modified: Wed, 05 Sep 2018 23:20:53 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a430ceed57be3c3351ece3e29a209a29bca515d4b85f4cc186acf36c75c60d04`  
		Last Modified: Wed, 05 Sep 2018 23:20:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:be199c201696deff28182b411878cf4e8d51d0082bfa89083fd5610e862230dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113746020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2284a30120c739f30507c6dd63b361bce0b9dac98fe121e393cf0de84794efc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:55:56 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Thu, 23 Aug 2018 15:56:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:56:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:56:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:56:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:56:08 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:52:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:52:11 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:52:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:52:40 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:52:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:53:24 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:53:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:53:26 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 23 Aug 2018 18:53:27 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 23 Aug 2018 18:53:28 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:54:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:54:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:54:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:54:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:54:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:54:46 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:54:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908456bb100430678c2f5d49c9c216260c4b5dfe745a94c1ed92fe97b1a01771`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186622ef44de7a2bec81893dfaf016b9b50afe37edabe298892670046190fec`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f510d815c12855dc5ea55f5d264ac661d788831749d8c17e18e556e3cf6096`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e211bdcc20115eb5109160072716547977bdfedbe96cc7887a0d0c4b65551`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941f294d977bd03c3761f13ac6fd183e26813f2074907b9c1f3ba86e0f1f537d`  
		Last Modified: Thu, 23 Aug 2018 18:58:16 GMT  
		Size: 2.0 KB (1981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405dda851a4ee8222cf2fc3bc67afa5777db2bc9077b9b447a17db7c63754b4`  
		Last Modified: Thu, 23 Aug 2018 18:58:15 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43575c56237ad9c6b2ec5627c26355906a78d61ac69da658bd72bd05397d1d68`  
		Last Modified: Thu, 23 Aug 2018 18:58:15 GMT  
		Size: 819.3 KB (819318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602097c18b953dea3312975ecdd94390198f76b60469dbc0db2af3a33d49fc06`  
		Last Modified: Thu, 23 Aug 2018 18:58:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ccabdc57cf73236deba3675b4b0ded2de06b8376e486a796a8ca4343cd4a77`  
		Last Modified: Thu, 23 Aug 2018 18:58:17 GMT  
		Size: 7.4 MB (7447047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b768cc00762d6f32f3b8f5074462f4eff9045fea83fc2d47d6f0d09862b51`  
		Last Modified: Thu, 23 Aug 2018 18:58:12 GMT  
		Size: 25.1 KB (25136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4bd919a5059b9d745e5481ef1ca97ebd0365ed97af1d3733e13dbb0ec5476f`  
		Last Modified: Thu, 23 Aug 2018 18:58:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01e55e75a3ae797bd9ec98afec08a34136aded9d3872ae5666b99a1c36b5810`  
		Last Modified: Thu, 23 Aug 2018 18:58:40 GMT  
		Size: 61.9 MB (61926826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf032518712732ee3a324e46ce0c329274ca3a2adb0955cb8593eacce398895`  
		Last Modified: Thu, 23 Aug 2018 18:58:11 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb2c10510df46bc7bf04f894a6b38f865796f4a96a29463ab1462ce97593e26`  
		Last Modified: Thu, 23 Aug 2018 18:58:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:bb8e8377be0c649eb72986fadd0dcb67c58a6bd5a23f7b5d96b376c3ebbc37f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108236732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa80cb3ba9dd7131cf3a67af201a6f0678f1f9788231fd5f5f6585cca79af75f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:55:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:57:45 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:57:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:00:26 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:00:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:04:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:04:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:04:30 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 23 Aug 2018 16:04:31 GMT
ENV MARIADB_VERSION=10.0.36+maria-1~xenial
# Thu, 23 Aug 2018 16:04:35 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:10:40 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:10:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:10:42 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:10:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:10:51 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:10:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa0203dc95ee7198fc4a7a448ec52818f060e2dc5ed19194b1205c3e721e19`  
		Last Modified: Thu, 23 Aug 2018 16:21:01 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241fb8418b98dd36ef027ad16ee04e2e59e1c64b70b54e2ee0a6d018482f42df`  
		Last Modified: Thu, 23 Aug 2018 16:20:58 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0104743263a37926eb11fa73a6b3c058ecc5fd540fd0fffb6139c55de5ae4e46`  
		Last Modified: Thu, 23 Aug 2018 16:20:59 GMT  
		Size: 808.9 KB (808901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86889b7a02489a564b388df181f30c47977a8a1590b8307ca3c5d6a8b22cf3ae`  
		Last Modified: Thu, 23 Aug 2018 16:20:58 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929bf3ac5ea4f3c7ddeb81041f7ebdadf30f7b58a4e55a68810bfea299bacc02`  
		Last Modified: Thu, 23 Aug 2018 16:21:00 GMT  
		Size: 7.2 MB (7209511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e1ed6dcac301850a71787bab96595eca90b7745fcc07f8f6eaf66f81b48573`  
		Last Modified: Thu, 23 Aug 2018 16:20:55 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f0152bf96dc11a3b83cbe8c421da537509ed2bf9f99d321e52c5609da4629c`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb91a2dd23e0ae98e3324b315723fdbbd8e2a1d8d58584e47232b18a901565f`  
		Last Modified: Thu, 23 Aug 2018 16:21:10 GMT  
		Size: 54.6 MB (54589869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77781404938fdb28426e67bbfed5f39410d17e7722c7459e873a1652a7400203`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb93f4b2f057d7affa06c0ee6975c3d6016bd21cbdf25b257e5925e8c4760976`  
		Last Modified: Thu, 23 Aug 2018 16:20:54 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:95f251625953cafc263d0f213cd3062fe0db47d32634bc1c031eeebf55b37e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:efb214c49a42275dfa3ae257e460b422c711ff5eb95d740a81665a97caedd668
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132636574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909c690cf28aad4645c7b64c315f844ed4893543124f6760e916ef1bf0875d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:15:30 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 05 Sep 2018 23:15:30 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Wed, 05 Sep 2018 23:15:31 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:16:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:16:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:16:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:16:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:16:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:16:10 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:16:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5180b5748ba5493617bd02b8b095fd4f569d0ebb479ba8dd1bea2d7f4fdd7d05`  
		Last Modified: Wed, 05 Sep 2018 23:20:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8e2f0f089de6f47a2c9694b6bec20e89458306cad278d8d126fd128d37ac5f`  
		Last Modified: Wed, 05 Sep 2018 23:20:29 GMT  
		Size: 92.2 MB (92224170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b0e04415a1b6f23ae310779451a05f11c63be9db20dc06a2141ceda85ba2a`  
		Last Modified: Wed, 05 Sep 2018 23:20:11 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d6a1f414c13d93b9ae9df6a6d6440edaed16dcabcca54196b059f0da28e9be`  
		Last Modified: Wed, 05 Sep 2018 23:20:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:3b3ff859ea706acdaf471b97575d65210e55b5da1bb96e18ce397b2aafa130a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125062568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0afac9baea13931e2779ac5737a7e21b120c39e0bb8fd7dd572af03ef4922a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:15:52 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 23 Aug 2018 22:15:53 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Thu, 23 Aug 2018 22:15:55 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:17:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:17:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:17:54 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:17:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:17:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:17:58 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:17:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff5034311a6a46cf276751d16a90a30ddd6446b6311de7eb11751466135331`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94df76a71a713372683463e425aa6206f02899035c7b52edc9a139ecacd2a2`  
		Last Modified: Thu, 23 Aug 2018 22:24:46 GMT  
		Size: 88.5 MB (88500805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacaf7bea05c9cc8114b4e042a08f3211d10bf849f07a9f0c177040383d8cbbc`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f5ee61c44c6daa908894e7663907f25693c50bc29561a68b1a3d2d6e7b28d2`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:9ad7c409206eca0121f3ff6bf2b0b0efad28c7affdae10f1b3e910add4120d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138142656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29b74c123521d1aad8929ce331fd9c820fda604a6fa18e0c4a9888cbace3c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:51:32 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 23 Aug 2018 15:51:33 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Thu, 23 Aug 2018 15:51:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:55:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:55:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:55:13 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:55:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:55:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:55:17 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:55:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c0749c4828359354c10857f5435003cee514ba6f6fe5deb3b94763e7c74cdb`  
		Last Modified: Thu, 23 Aug 2018 16:19:52 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae004b89861f0c12dc070d708b524581d0f2806aa1d78b6d1c1dcefaaf812`  
		Last Modified: Thu, 23 Aug 2018 16:20:18 GMT  
		Size: 93.6 MB (93582845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93dae4c93475e79585ea3965e499a75420774fc1647f85123d4c2baf9f11b6f`  
		Last Modified: Thu, 23 Aug 2018 16:19:52 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe51cd2260eecc3640d3f8806ddd0872483bc8e0b6d4fd7d113886bc0627b23`  
		Last Modified: Thu, 23 Aug 2018 16:19:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.35`

```console
$ docker pull mariadb@sha256:95f251625953cafc263d0f213cd3062fe0db47d32634bc1c031eeebf55b37e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.35` - linux; amd64

```console
$ docker pull mariadb@sha256:efb214c49a42275dfa3ae257e460b422c711ff5eb95d740a81665a97caedd668
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132636574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909c690cf28aad4645c7b64c315f844ed4893543124f6760e916ef1bf0875d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:15:30 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 05 Sep 2018 23:15:30 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Wed, 05 Sep 2018 23:15:31 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:16:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:16:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:16:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:16:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:16:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:16:10 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:16:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5180b5748ba5493617bd02b8b095fd4f569d0ebb479ba8dd1bea2d7f4fdd7d05`  
		Last Modified: Wed, 05 Sep 2018 23:20:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8e2f0f089de6f47a2c9694b6bec20e89458306cad278d8d126fd128d37ac5f`  
		Last Modified: Wed, 05 Sep 2018 23:20:29 GMT  
		Size: 92.2 MB (92224170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b0e04415a1b6f23ae310779451a05f11c63be9db20dc06a2141ceda85ba2a`  
		Last Modified: Wed, 05 Sep 2018 23:20:11 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d6a1f414c13d93b9ae9df6a6d6440edaed16dcabcca54196b059f0da28e9be`  
		Last Modified: Wed, 05 Sep 2018 23:20:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.35` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:3b3ff859ea706acdaf471b97575d65210e55b5da1bb96e18ce397b2aafa130a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125062568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0afac9baea13931e2779ac5737a7e21b120c39e0bb8fd7dd572af03ef4922a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:15:52 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 23 Aug 2018 22:15:53 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Thu, 23 Aug 2018 22:15:55 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:17:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:17:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:17:54 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:17:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:17:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:17:58 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:17:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff5034311a6a46cf276751d16a90a30ddd6446b6311de7eb11751466135331`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94df76a71a713372683463e425aa6206f02899035c7b52edc9a139ecacd2a2`  
		Last Modified: Thu, 23 Aug 2018 22:24:46 GMT  
		Size: 88.5 MB (88500805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacaf7bea05c9cc8114b4e042a08f3211d10bf849f07a9f0c177040383d8cbbc`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f5ee61c44c6daa908894e7663907f25693c50bc29561a68b1a3d2d6e7b28d2`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.35` - linux; ppc64le

```console
$ docker pull mariadb@sha256:9ad7c409206eca0121f3ff6bf2b0b0efad28c7affdae10f1b3e910add4120d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138142656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29b74c123521d1aad8929ce331fd9c820fda604a6fa18e0c4a9888cbace3c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:51:32 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 23 Aug 2018 15:51:33 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Thu, 23 Aug 2018 15:51:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:55:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:55:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:55:13 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:55:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:55:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:55:17 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:55:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c0749c4828359354c10857f5435003cee514ba6f6fe5deb3b94763e7c74cdb`  
		Last Modified: Thu, 23 Aug 2018 16:19:52 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae004b89861f0c12dc070d708b524581d0f2806aa1d78b6d1c1dcefaaf812`  
		Last Modified: Thu, 23 Aug 2018 16:20:18 GMT  
		Size: 93.6 MB (93582845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93dae4c93475e79585ea3965e499a75420774fc1647f85123d4c2baf9f11b6f`  
		Last Modified: Thu, 23 Aug 2018 16:19:52 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe51cd2260eecc3640d3f8806ddd0872483bc8e0b6d4fd7d113886bc0627b23`  
		Last Modified: Thu, 23 Aug 2018 16:19:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.35-bionic`

```console
$ docker pull mariadb@sha256:95f251625953cafc263d0f213cd3062fe0db47d32634bc1c031eeebf55b37e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.35-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:efb214c49a42275dfa3ae257e460b422c711ff5eb95d740a81665a97caedd668
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132636574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909c690cf28aad4645c7b64c315f844ed4893543124f6760e916ef1bf0875d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:15:30 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 05 Sep 2018 23:15:30 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Wed, 05 Sep 2018 23:15:31 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:16:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:16:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:16:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:16:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:16:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:16:10 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:16:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5180b5748ba5493617bd02b8b095fd4f569d0ebb479ba8dd1bea2d7f4fdd7d05`  
		Last Modified: Wed, 05 Sep 2018 23:20:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8e2f0f089de6f47a2c9694b6bec20e89458306cad278d8d126fd128d37ac5f`  
		Last Modified: Wed, 05 Sep 2018 23:20:29 GMT  
		Size: 92.2 MB (92224170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b0e04415a1b6f23ae310779451a05f11c63be9db20dc06a2141ceda85ba2a`  
		Last Modified: Wed, 05 Sep 2018 23:20:11 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d6a1f414c13d93b9ae9df6a6d6440edaed16dcabcca54196b059f0da28e9be`  
		Last Modified: Wed, 05 Sep 2018 23:20:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.35-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:3b3ff859ea706acdaf471b97575d65210e55b5da1bb96e18ce397b2aafa130a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125062568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0afac9baea13931e2779ac5737a7e21b120c39e0bb8fd7dd572af03ef4922a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:15:52 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 23 Aug 2018 22:15:53 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Thu, 23 Aug 2018 22:15:55 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:17:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:17:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:17:54 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:17:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:17:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:17:58 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:17:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff5034311a6a46cf276751d16a90a30ddd6446b6311de7eb11751466135331`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94df76a71a713372683463e425aa6206f02899035c7b52edc9a139ecacd2a2`  
		Last Modified: Thu, 23 Aug 2018 22:24:46 GMT  
		Size: 88.5 MB (88500805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacaf7bea05c9cc8114b4e042a08f3211d10bf849f07a9f0c177040383d8cbbc`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f5ee61c44c6daa908894e7663907f25693c50bc29561a68b1a3d2d6e7b28d2`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.35-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:9ad7c409206eca0121f3ff6bf2b0b0efad28c7affdae10f1b3e910add4120d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138142656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29b74c123521d1aad8929ce331fd9c820fda604a6fa18e0c4a9888cbace3c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:51:32 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 23 Aug 2018 15:51:33 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Thu, 23 Aug 2018 15:51:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:55:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:55:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:55:13 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:55:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:55:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:55:17 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:55:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c0749c4828359354c10857f5435003cee514ba6f6fe5deb3b94763e7c74cdb`  
		Last Modified: Thu, 23 Aug 2018 16:19:52 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae004b89861f0c12dc070d708b524581d0f2806aa1d78b6d1c1dcefaaf812`  
		Last Modified: Thu, 23 Aug 2018 16:20:18 GMT  
		Size: 93.6 MB (93582845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93dae4c93475e79585ea3965e499a75420774fc1647f85123d4c2baf9f11b6f`  
		Last Modified: Thu, 23 Aug 2018 16:19:52 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe51cd2260eecc3640d3f8806ddd0872483bc8e0b6d4fd7d113886bc0627b23`  
		Last Modified: Thu, 23 Aug 2018 16:19:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:95f251625953cafc263d0f213cd3062fe0db47d32634bc1c031eeebf55b37e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:efb214c49a42275dfa3ae257e460b422c711ff5eb95d740a81665a97caedd668
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132636574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909c690cf28aad4645c7b64c315f844ed4893543124f6760e916ef1bf0875d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:15:30 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 05 Sep 2018 23:15:30 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Wed, 05 Sep 2018 23:15:31 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:16:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:16:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:16:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:16:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:16:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:16:10 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:16:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5180b5748ba5493617bd02b8b095fd4f569d0ebb479ba8dd1bea2d7f4fdd7d05`  
		Last Modified: Wed, 05 Sep 2018 23:20:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8e2f0f089de6f47a2c9694b6bec20e89458306cad278d8d126fd128d37ac5f`  
		Last Modified: Wed, 05 Sep 2018 23:20:29 GMT  
		Size: 92.2 MB (92224170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b0e04415a1b6f23ae310779451a05f11c63be9db20dc06a2141ceda85ba2a`  
		Last Modified: Wed, 05 Sep 2018 23:20:11 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d6a1f414c13d93b9ae9df6a6d6440edaed16dcabcca54196b059f0da28e9be`  
		Last Modified: Wed, 05 Sep 2018 23:20:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:3b3ff859ea706acdaf471b97575d65210e55b5da1bb96e18ce397b2aafa130a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125062568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0afac9baea13931e2779ac5737a7e21b120c39e0bb8fd7dd572af03ef4922a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:15:52 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 23 Aug 2018 22:15:53 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Thu, 23 Aug 2018 22:15:55 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:17:35 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:17:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:17:54 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:17:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:17:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:17:58 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:17:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff5034311a6a46cf276751d16a90a30ddd6446b6311de7eb11751466135331`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94df76a71a713372683463e425aa6206f02899035c7b52edc9a139ecacd2a2`  
		Last Modified: Thu, 23 Aug 2018 22:24:46 GMT  
		Size: 88.5 MB (88500805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacaf7bea05c9cc8114b4e042a08f3211d10bf849f07a9f0c177040383d8cbbc`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f5ee61c44c6daa908894e7663907f25693c50bc29561a68b1a3d2d6e7b28d2`  
		Last Modified: Thu, 23 Aug 2018 22:24:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:9ad7c409206eca0121f3ff6bf2b0b0efad28c7affdae10f1b3e910add4120d07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138142656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29b74c123521d1aad8929ce331fd9c820fda604a6fa18e0c4a9888cbace3c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:51:32 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 23 Aug 2018 15:51:33 GMT
ENV MARIADB_VERSION=1:10.1.35+maria-1~bionic
# Thu, 23 Aug 2018 15:51:44 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:55:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:55:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:55:13 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:55:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:55:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:55:17 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:55:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c0749c4828359354c10857f5435003cee514ba6f6fe5deb3b94763e7c74cdb`  
		Last Modified: Thu, 23 Aug 2018 16:19:52 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae004b89861f0c12dc070d708b524581d0f2806aa1d78b6d1c1dcefaaf812`  
		Last Modified: Thu, 23 Aug 2018 16:20:18 GMT  
		Size: 93.6 MB (93582845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93dae4c93475e79585ea3965e499a75420774fc1647f85123d4c2baf9f11b6f`  
		Last Modified: Thu, 23 Aug 2018 16:19:52 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe51cd2260eecc3640d3f8806ddd0872483bc8e0b6d4fd7d113886bc0627b23`  
		Last Modified: Thu, 23 Aug 2018 16:19:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:18340db1515f2ab4a10936bed9ae1430a5367360c9a2400b77e561ffad69180f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:1f1020a12900a1a810a3bb14b9a3e34245acbac59860bf93c9f9ec4d4b57ae4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113590215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e65854c6e06da974e507f8a1db832171b6926c6939e6bae0bf035eba4479520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:55 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 05 Sep 2018 23:14:55 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Wed, 05 Sep 2018 23:14:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:15:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:15:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:15:22 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:15:23 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:15:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ebd773359003fa0a9af42b21357271c35b6368e252e1bfca0cd4f6df21ea47`  
		Last Modified: Wed, 05 Sep 2018 23:19:36 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a56536bfcbcfaca00f0714e12e57d9e71704330a7e4fd08e56afc7a8981f2e`  
		Last Modified: Wed, 05 Sep 2018 23:19:50 GMT  
		Size: 73.2 MB (73177811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e575203e164cd7b31f5382c582fe9da34cb2ead0cf9ced78d448ca5d5f124d`  
		Last Modified: Wed, 05 Sep 2018 23:19:35 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc192d4fbf390eddda75feeb130e1cc2aac1f8468ffcdc9301a9a0e89ab8a9fc`  
		Last Modified: Wed, 05 Sep 2018 23:19:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a2455decdc16622164058aafe4bfbec6522b2218027b3d7b8b785ea186bf0dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108645075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087e57aae985f28405bcf6e82519259336a528a3f6f10921e0fbe9d40b34b1aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:12:53 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 23 Aug 2018 22:12:54 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Thu, 23 Aug 2018 22:12:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:14:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:14:28 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:14:29 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:14:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:14:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:14:51 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:14:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06c942e4586513e226b66314c1bb857bbf182703f9223a15b9f831e280e4be`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c467410096be9bd81a53e7ef0deaace8940e75747f851cb7dff3b1c664fea1`  
		Last Modified: Thu, 23 Aug 2018 22:22:38 GMT  
		Size: 72.1 MB (72083312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4e3927df245e456c110c79f2fe0d38fa1938f4aaa44493d76b5e0cf9e1ddc4`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdba59058e57d909d0324752513798db5536cb9cd85ff8270d8618ef3abf50f`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:e02b4aafe50aa5ba7498bfede3726a9e3f14f5ff270db77e63efa7d94bda51f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120578411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89d1f29515c97770829eb0ea5c12777ca7c7499a5f7da8a1b7ee4181b78dd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:48:01 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 23 Aug 2018 15:48:01 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Thu, 23 Aug 2018 15:48:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:50:50 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:50:55 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:50:56 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:51:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:51:04 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:51:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c726f7fe7092da46bbc17bee91e573ff89d662ca41679722dec22ebb81ff6f`  
		Last Modified: Thu, 23 Aug 2018 16:18:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310671ab60c8c81216c828509043404476d6c323fbc49abdb6c8b606f2df5678`  
		Last Modified: Thu, 23 Aug 2018 16:19:13 GMT  
		Size: 76.0 MB (76018602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deef52ab528938e2aea963185cb83d0fa937ba05d3e7f9c3f1f8950800dfd445`  
		Last Modified: Thu, 23 Aug 2018 16:18:52 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc68159794b87a883bd87deba9cc3bd2d3d959ccd6fd941795c65e5c58b582ee`  
		Last Modified: Thu, 23 Aug 2018 16:18:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.17`

```console
$ docker pull mariadb@sha256:18340db1515f2ab4a10936bed9ae1430a5367360c9a2400b77e561ffad69180f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.17` - linux; amd64

```console
$ docker pull mariadb@sha256:1f1020a12900a1a810a3bb14b9a3e34245acbac59860bf93c9f9ec4d4b57ae4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113590215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e65854c6e06da974e507f8a1db832171b6926c6939e6bae0bf035eba4479520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:55 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 05 Sep 2018 23:14:55 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Wed, 05 Sep 2018 23:14:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:15:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:15:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:15:22 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:15:23 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:15:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ebd773359003fa0a9af42b21357271c35b6368e252e1bfca0cd4f6df21ea47`  
		Last Modified: Wed, 05 Sep 2018 23:19:36 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a56536bfcbcfaca00f0714e12e57d9e71704330a7e4fd08e56afc7a8981f2e`  
		Last Modified: Wed, 05 Sep 2018 23:19:50 GMT  
		Size: 73.2 MB (73177811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e575203e164cd7b31f5382c582fe9da34cb2ead0cf9ced78d448ca5d5f124d`  
		Last Modified: Wed, 05 Sep 2018 23:19:35 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc192d4fbf390eddda75feeb130e1cc2aac1f8468ffcdc9301a9a0e89ab8a9fc`  
		Last Modified: Wed, 05 Sep 2018 23:19:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.17` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a2455decdc16622164058aafe4bfbec6522b2218027b3d7b8b785ea186bf0dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108645075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087e57aae985f28405bcf6e82519259336a528a3f6f10921e0fbe9d40b34b1aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:12:53 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 23 Aug 2018 22:12:54 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Thu, 23 Aug 2018 22:12:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:14:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:14:28 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:14:29 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:14:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:14:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:14:51 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:14:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06c942e4586513e226b66314c1bb857bbf182703f9223a15b9f831e280e4be`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c467410096be9bd81a53e7ef0deaace8940e75747f851cb7dff3b1c664fea1`  
		Last Modified: Thu, 23 Aug 2018 22:22:38 GMT  
		Size: 72.1 MB (72083312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4e3927df245e456c110c79f2fe0d38fa1938f4aaa44493d76b5e0cf9e1ddc4`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdba59058e57d909d0324752513798db5536cb9cd85ff8270d8618ef3abf50f`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.17` - linux; ppc64le

```console
$ docker pull mariadb@sha256:e02b4aafe50aa5ba7498bfede3726a9e3f14f5ff270db77e63efa7d94bda51f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120578411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89d1f29515c97770829eb0ea5c12777ca7c7499a5f7da8a1b7ee4181b78dd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:48:01 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 23 Aug 2018 15:48:01 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Thu, 23 Aug 2018 15:48:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:50:50 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:50:55 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:50:56 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:51:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:51:04 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:51:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c726f7fe7092da46bbc17bee91e573ff89d662ca41679722dec22ebb81ff6f`  
		Last Modified: Thu, 23 Aug 2018 16:18:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310671ab60c8c81216c828509043404476d6c323fbc49abdb6c8b606f2df5678`  
		Last Modified: Thu, 23 Aug 2018 16:19:13 GMT  
		Size: 76.0 MB (76018602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deef52ab528938e2aea963185cb83d0fa937ba05d3e7f9c3f1f8950800dfd445`  
		Last Modified: Thu, 23 Aug 2018 16:18:52 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc68159794b87a883bd87deba9cc3bd2d3d959ccd6fd941795c65e5c58b582ee`  
		Last Modified: Thu, 23 Aug 2018 16:18:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.17-bionic`

```console
$ docker pull mariadb@sha256:18340db1515f2ab4a10936bed9ae1430a5367360c9a2400b77e561ffad69180f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.17-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:1f1020a12900a1a810a3bb14b9a3e34245acbac59860bf93c9f9ec4d4b57ae4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113590215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e65854c6e06da974e507f8a1db832171b6926c6939e6bae0bf035eba4479520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:55 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 05 Sep 2018 23:14:55 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Wed, 05 Sep 2018 23:14:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:15:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:15:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:15:22 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:15:23 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:15:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ebd773359003fa0a9af42b21357271c35b6368e252e1bfca0cd4f6df21ea47`  
		Last Modified: Wed, 05 Sep 2018 23:19:36 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a56536bfcbcfaca00f0714e12e57d9e71704330a7e4fd08e56afc7a8981f2e`  
		Last Modified: Wed, 05 Sep 2018 23:19:50 GMT  
		Size: 73.2 MB (73177811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e575203e164cd7b31f5382c582fe9da34cb2ead0cf9ced78d448ca5d5f124d`  
		Last Modified: Wed, 05 Sep 2018 23:19:35 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc192d4fbf390eddda75feeb130e1cc2aac1f8468ffcdc9301a9a0e89ab8a9fc`  
		Last Modified: Wed, 05 Sep 2018 23:19:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.17-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a2455decdc16622164058aafe4bfbec6522b2218027b3d7b8b785ea186bf0dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108645075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087e57aae985f28405bcf6e82519259336a528a3f6f10921e0fbe9d40b34b1aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:12:53 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 23 Aug 2018 22:12:54 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Thu, 23 Aug 2018 22:12:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:14:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:14:28 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:14:29 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:14:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:14:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:14:51 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:14:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06c942e4586513e226b66314c1bb857bbf182703f9223a15b9f831e280e4be`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c467410096be9bd81a53e7ef0deaace8940e75747f851cb7dff3b1c664fea1`  
		Last Modified: Thu, 23 Aug 2018 22:22:38 GMT  
		Size: 72.1 MB (72083312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4e3927df245e456c110c79f2fe0d38fa1938f4aaa44493d76b5e0cf9e1ddc4`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdba59058e57d909d0324752513798db5536cb9cd85ff8270d8618ef3abf50f`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.17-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:e02b4aafe50aa5ba7498bfede3726a9e3f14f5ff270db77e63efa7d94bda51f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120578411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89d1f29515c97770829eb0ea5c12777ca7c7499a5f7da8a1b7ee4181b78dd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:48:01 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 23 Aug 2018 15:48:01 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Thu, 23 Aug 2018 15:48:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:50:50 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:50:55 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:50:56 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:51:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:51:04 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:51:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c726f7fe7092da46bbc17bee91e573ff89d662ca41679722dec22ebb81ff6f`  
		Last Modified: Thu, 23 Aug 2018 16:18:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310671ab60c8c81216c828509043404476d6c323fbc49abdb6c8b606f2df5678`  
		Last Modified: Thu, 23 Aug 2018 16:19:13 GMT  
		Size: 76.0 MB (76018602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deef52ab528938e2aea963185cb83d0fa937ba05d3e7f9c3f1f8950800dfd445`  
		Last Modified: Thu, 23 Aug 2018 16:18:52 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc68159794b87a883bd87deba9cc3bd2d3d959ccd6fd941795c65e5c58b582ee`  
		Last Modified: Thu, 23 Aug 2018 16:18:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:18340db1515f2ab4a10936bed9ae1430a5367360c9a2400b77e561ffad69180f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:1f1020a12900a1a810a3bb14b9a3e34245acbac59860bf93c9f9ec4d4b57ae4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113590215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e65854c6e06da974e507f8a1db832171b6926c6939e6bae0bf035eba4479520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:55 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 05 Sep 2018 23:14:55 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Wed, 05 Sep 2018 23:14:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:15:22 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:15:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:15:22 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:15:23 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:15:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ebd773359003fa0a9af42b21357271c35b6368e252e1bfca0cd4f6df21ea47`  
		Last Modified: Wed, 05 Sep 2018 23:19:36 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a56536bfcbcfaca00f0714e12e57d9e71704330a7e4fd08e56afc7a8981f2e`  
		Last Modified: Wed, 05 Sep 2018 23:19:50 GMT  
		Size: 73.2 MB (73177811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e575203e164cd7b31f5382c582fe9da34cb2ead0cf9ced78d448ca5d5f124d`  
		Last Modified: Wed, 05 Sep 2018 23:19:35 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc192d4fbf390eddda75feeb130e1cc2aac1f8468ffcdc9301a9a0e89ab8a9fc`  
		Last Modified: Wed, 05 Sep 2018 23:19:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a2455decdc16622164058aafe4bfbec6522b2218027b3d7b8b785ea186bf0dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108645075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087e57aae985f28405bcf6e82519259336a528a3f6f10921e0fbe9d40b34b1aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:12:53 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 23 Aug 2018 22:12:54 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Thu, 23 Aug 2018 22:12:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:14:25 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:14:28 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:14:29 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:14:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:14:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:14:51 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:14:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06c942e4586513e226b66314c1bb857bbf182703f9223a15b9f831e280e4be`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c467410096be9bd81a53e7ef0deaace8940e75747f851cb7dff3b1c664fea1`  
		Last Modified: Thu, 23 Aug 2018 22:22:38 GMT  
		Size: 72.1 MB (72083312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4e3927df245e456c110c79f2fe0d38fa1938f4aaa44493d76b5e0cf9e1ddc4`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdba59058e57d909d0324752513798db5536cb9cd85ff8270d8618ef3abf50f`  
		Last Modified: Thu, 23 Aug 2018 22:22:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:e02b4aafe50aa5ba7498bfede3726a9e3f14f5ff270db77e63efa7d94bda51f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120578411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89d1f29515c97770829eb0ea5c12777ca7c7499a5f7da8a1b7ee4181b78dd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:48:01 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 23 Aug 2018 15:48:01 GMT
ENV MARIADB_VERSION=1:10.2.17+maria~bionic
# Thu, 23 Aug 2018 15:48:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:50:50 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:50:55 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:50:56 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:51:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:51:04 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:51:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c726f7fe7092da46bbc17bee91e573ff89d662ca41679722dec22ebb81ff6f`  
		Last Modified: Thu, 23 Aug 2018 16:18:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310671ab60c8c81216c828509043404476d6c323fbc49abdb6c8b606f2df5678`  
		Last Modified: Thu, 23 Aug 2018 16:19:13 GMT  
		Size: 76.0 MB (76018602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deef52ab528938e2aea963185cb83d0fa937ba05d3e7f9c3f1f8950800dfd445`  
		Last Modified: Thu, 23 Aug 2018 16:18:52 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc68159794b87a883bd87deba9cc3bd2d3d959ccd6fd941795c65e5c58b582ee`  
		Last Modified: Thu, 23 Aug 2018 16:18:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:b7894bd08e5752acdd41fea654cb89467c99e67b8293975bb5d787b27e66ce1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:50829ad0fdb382e9fe5bc87afeedc585512b047ca92492825672defa9d565dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199cc294e3168cac8c8f5499649d258a9d5fbd6700d7c899d9dded911d0b1c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 05 Sep 2018 23:14:05 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 05 Sep 2018 23:14:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:14:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:14:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:14:38 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:14:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d52b11dd31df10b83b8e142b5c147fcd9c3d8ddb4dd13ea090b8ac96ea154a`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c7b70556f3ef37f73050ff9ca08d66808d468eb09fbc3bc9c8b6d4a0e43473`  
		Last Modified: Wed, 05 Sep 2018 23:18:54 GMT  
		Size: 74.2 MB (74183479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b39f2f89a92d76319758a3f39636307faff88a4f943aac91dff110c0d792c`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41480b9319d7fc39776ea8daa6bb4090c9fb8774877f632463451f1928d78478`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bb3da9b2d003b528aee1cd7b3610d057574ac715acbdd07c282e63bc4acb9223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109634178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c5d6740eff09ab6afc46994030cacaa492acd45d6afe02c927fd23170f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:09:55 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 22:09:56 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 22:09:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:11:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:11:29 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:11:30 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:11:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:11:52 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:11:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd230e77ad7931d9afc0ae5dbbd67601ebae09321311d734e4f6ecc83675b4`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e572e9d2bc5140b8535321163e614359a0d48098ddf9f412eaac2a2a04525`  
		Last Modified: Thu, 23 Aug 2018 22:19:08 GMT  
		Size: 73.1 MB (73072412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0f75587012db4d582b5662078232f827131e093cf75ca8d56a2ebfc7700e97`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8b36c0808a70ed12cbefdfebb19970ebc1f6b2f9bbd1db35e359e6d4c4a01`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7a5cba569002317cba63d01ecc2899763716faf42bc39da24ca4dd96230524fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121645522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606cb6633b616a22f33ed397e8e002c0816c6e1f4d485706c096dabaad61cf53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 15:45:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:47:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:47:43 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:47:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5927af8993fde1a3ed81ce7ed5f1df08ad326301733196f4083a8e208d90a02`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c0f40150a788f87cd7f48ccb5fa7de95d7d50a32035cb4984ebc6782edcae`  
		Last Modified: Thu, 23 Aug 2018 16:17:47 GMT  
		Size: 77.1 MB (77085714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa4daa0c5f9e0e1d9f5b42c1c775b8cad90c84232d0262940f6551cc73659dd`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc319c9268edf5544cfe478730005139b87f4cc913b664e67f3266ced478fc6`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.9`

```console
$ docker pull mariadb@sha256:b7894bd08e5752acdd41fea654cb89467c99e67b8293975bb5d787b27e66ce1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.9` - linux; amd64

```console
$ docker pull mariadb@sha256:50829ad0fdb382e9fe5bc87afeedc585512b047ca92492825672defa9d565dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199cc294e3168cac8c8f5499649d258a9d5fbd6700d7c899d9dded911d0b1c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 05 Sep 2018 23:14:05 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 05 Sep 2018 23:14:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:14:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:14:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:14:38 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:14:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d52b11dd31df10b83b8e142b5c147fcd9c3d8ddb4dd13ea090b8ac96ea154a`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c7b70556f3ef37f73050ff9ca08d66808d468eb09fbc3bc9c8b6d4a0e43473`  
		Last Modified: Wed, 05 Sep 2018 23:18:54 GMT  
		Size: 74.2 MB (74183479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b39f2f89a92d76319758a3f39636307faff88a4f943aac91dff110c0d792c`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41480b9319d7fc39776ea8daa6bb4090c9fb8774877f632463451f1928d78478`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.9` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bb3da9b2d003b528aee1cd7b3610d057574ac715acbdd07c282e63bc4acb9223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109634178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c5d6740eff09ab6afc46994030cacaa492acd45d6afe02c927fd23170f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:09:55 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 22:09:56 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 22:09:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:11:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:11:29 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:11:30 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:11:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:11:52 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:11:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd230e77ad7931d9afc0ae5dbbd67601ebae09321311d734e4f6ecc83675b4`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e572e9d2bc5140b8535321163e614359a0d48098ddf9f412eaac2a2a04525`  
		Last Modified: Thu, 23 Aug 2018 22:19:08 GMT  
		Size: 73.1 MB (73072412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0f75587012db4d582b5662078232f827131e093cf75ca8d56a2ebfc7700e97`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8b36c0808a70ed12cbefdfebb19970ebc1f6b2f9bbd1db35e359e6d4c4a01`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.9` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7a5cba569002317cba63d01ecc2899763716faf42bc39da24ca4dd96230524fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121645522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606cb6633b616a22f33ed397e8e002c0816c6e1f4d485706c096dabaad61cf53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 15:45:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:47:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:47:43 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:47:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5927af8993fde1a3ed81ce7ed5f1df08ad326301733196f4083a8e208d90a02`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c0f40150a788f87cd7f48ccb5fa7de95d7d50a32035cb4984ebc6782edcae`  
		Last Modified: Thu, 23 Aug 2018 16:17:47 GMT  
		Size: 77.1 MB (77085714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa4daa0c5f9e0e1d9f5b42c1c775b8cad90c84232d0262940f6551cc73659dd`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc319c9268edf5544cfe478730005139b87f4cc913b664e67f3266ced478fc6`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.9-bionic`

```console
$ docker pull mariadb@sha256:b7894bd08e5752acdd41fea654cb89467c99e67b8293975bb5d787b27e66ce1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.9-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:50829ad0fdb382e9fe5bc87afeedc585512b047ca92492825672defa9d565dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199cc294e3168cac8c8f5499649d258a9d5fbd6700d7c899d9dded911d0b1c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 05 Sep 2018 23:14:05 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 05 Sep 2018 23:14:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:14:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:14:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:14:38 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:14:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d52b11dd31df10b83b8e142b5c147fcd9c3d8ddb4dd13ea090b8ac96ea154a`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c7b70556f3ef37f73050ff9ca08d66808d468eb09fbc3bc9c8b6d4a0e43473`  
		Last Modified: Wed, 05 Sep 2018 23:18:54 GMT  
		Size: 74.2 MB (74183479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b39f2f89a92d76319758a3f39636307faff88a4f943aac91dff110c0d792c`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41480b9319d7fc39776ea8daa6bb4090c9fb8774877f632463451f1928d78478`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.9-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bb3da9b2d003b528aee1cd7b3610d057574ac715acbdd07c282e63bc4acb9223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109634178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c5d6740eff09ab6afc46994030cacaa492acd45d6afe02c927fd23170f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:09:55 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 22:09:56 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 22:09:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:11:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:11:29 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:11:30 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:11:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:11:52 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:11:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd230e77ad7931d9afc0ae5dbbd67601ebae09321311d734e4f6ecc83675b4`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e572e9d2bc5140b8535321163e614359a0d48098ddf9f412eaac2a2a04525`  
		Last Modified: Thu, 23 Aug 2018 22:19:08 GMT  
		Size: 73.1 MB (73072412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0f75587012db4d582b5662078232f827131e093cf75ca8d56a2ebfc7700e97`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8b36c0808a70ed12cbefdfebb19970ebc1f6b2f9bbd1db35e359e6d4c4a01`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.9-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7a5cba569002317cba63d01ecc2899763716faf42bc39da24ca4dd96230524fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121645522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606cb6633b616a22f33ed397e8e002c0816c6e1f4d485706c096dabaad61cf53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 15:45:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:47:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:47:43 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:47:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5927af8993fde1a3ed81ce7ed5f1df08ad326301733196f4083a8e208d90a02`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c0f40150a788f87cd7f48ccb5fa7de95d7d50a32035cb4984ebc6782edcae`  
		Last Modified: Thu, 23 Aug 2018 16:17:47 GMT  
		Size: 77.1 MB (77085714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa4daa0c5f9e0e1d9f5b42c1c775b8cad90c84232d0262940f6551cc73659dd`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc319c9268edf5544cfe478730005139b87f4cc913b664e67f3266ced478fc6`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:b7894bd08e5752acdd41fea654cb89467c99e67b8293975bb5d787b27e66ce1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:50829ad0fdb382e9fe5bc87afeedc585512b047ca92492825672defa9d565dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199cc294e3168cac8c8f5499649d258a9d5fbd6700d7c899d9dded911d0b1c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 05 Sep 2018 23:14:05 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 05 Sep 2018 23:14:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:14:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:14:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:14:38 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:14:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d52b11dd31df10b83b8e142b5c147fcd9c3d8ddb4dd13ea090b8ac96ea154a`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c7b70556f3ef37f73050ff9ca08d66808d468eb09fbc3bc9c8b6d4a0e43473`  
		Last Modified: Wed, 05 Sep 2018 23:18:54 GMT  
		Size: 74.2 MB (74183479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b39f2f89a92d76319758a3f39636307faff88a4f943aac91dff110c0d792c`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41480b9319d7fc39776ea8daa6bb4090c9fb8774877f632463451f1928d78478`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bb3da9b2d003b528aee1cd7b3610d057574ac715acbdd07c282e63bc4acb9223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109634178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c5d6740eff09ab6afc46994030cacaa492acd45d6afe02c927fd23170f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:09:55 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 22:09:56 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 22:09:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:11:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:11:29 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:11:30 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:11:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:11:52 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:11:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd230e77ad7931d9afc0ae5dbbd67601ebae09321311d734e4f6ecc83675b4`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e572e9d2bc5140b8535321163e614359a0d48098ddf9f412eaac2a2a04525`  
		Last Modified: Thu, 23 Aug 2018 22:19:08 GMT  
		Size: 73.1 MB (73072412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0f75587012db4d582b5662078232f827131e093cf75ca8d56a2ebfc7700e97`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8b36c0808a70ed12cbefdfebb19970ebc1f6b2f9bbd1db35e359e6d4c4a01`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7a5cba569002317cba63d01ecc2899763716faf42bc39da24ca4dd96230524fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121645522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606cb6633b616a22f33ed397e8e002c0816c6e1f4d485706c096dabaad61cf53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 15:45:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:47:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:47:43 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:47:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5927af8993fde1a3ed81ce7ed5f1df08ad326301733196f4083a8e208d90a02`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c0f40150a788f87cd7f48ccb5fa7de95d7d50a32035cb4984ebc6782edcae`  
		Last Modified: Thu, 23 Aug 2018 16:17:47 GMT  
		Size: 77.1 MB (77085714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa4daa0c5f9e0e1d9f5b42c1c775b8cad90c84232d0262940f6551cc73659dd`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc319c9268edf5544cfe478730005139b87f4cc913b664e67f3266ced478fc6`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:b7894bd08e5752acdd41fea654cb89467c99e67b8293975bb5d787b27e66ce1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:50829ad0fdb382e9fe5bc87afeedc585512b047ca92492825672defa9d565dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199cc294e3168cac8c8f5499649d258a9d5fbd6700d7c899d9dded911d0b1c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 05 Sep 2018 23:14:05 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 05 Sep 2018 23:14:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:14:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:14:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:14:38 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:14:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d52b11dd31df10b83b8e142b5c147fcd9c3d8ddb4dd13ea090b8ac96ea154a`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c7b70556f3ef37f73050ff9ca08d66808d468eb09fbc3bc9c8b6d4a0e43473`  
		Last Modified: Wed, 05 Sep 2018 23:18:54 GMT  
		Size: 74.2 MB (74183479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b39f2f89a92d76319758a3f39636307faff88a4f943aac91dff110c0d792c`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41480b9319d7fc39776ea8daa6bb4090c9fb8774877f632463451f1928d78478`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bb3da9b2d003b528aee1cd7b3610d057574ac715acbdd07c282e63bc4acb9223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109634178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c5d6740eff09ab6afc46994030cacaa492acd45d6afe02c927fd23170f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:09:55 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 22:09:56 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 22:09:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:11:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:11:29 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:11:30 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:11:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:11:52 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:11:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd230e77ad7931d9afc0ae5dbbd67601ebae09321311d734e4f6ecc83675b4`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e572e9d2bc5140b8535321163e614359a0d48098ddf9f412eaac2a2a04525`  
		Last Modified: Thu, 23 Aug 2018 22:19:08 GMT  
		Size: 73.1 MB (73072412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0f75587012db4d582b5662078232f827131e093cf75ca8d56a2ebfc7700e97`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8b36c0808a70ed12cbefdfebb19970ebc1f6b2f9bbd1db35e359e6d4c4a01`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7a5cba569002317cba63d01ecc2899763716faf42bc39da24ca4dd96230524fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121645522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606cb6633b616a22f33ed397e8e002c0816c6e1f4d485706c096dabaad61cf53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 15:45:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:47:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:47:43 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:47:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5927af8993fde1a3ed81ce7ed5f1df08ad326301733196f4083a8e208d90a02`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c0f40150a788f87cd7f48ccb5fa7de95d7d50a32035cb4984ebc6782edcae`  
		Last Modified: Thu, 23 Aug 2018 16:17:47 GMT  
		Size: 77.1 MB (77085714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa4daa0c5f9e0e1d9f5b42c1c775b8cad90c84232d0262940f6551cc73659dd`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc319c9268edf5544cfe478730005139b87f4cc913b664e67f3266ced478fc6`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:e066085bcd1d1482ccc2d5dfa66083676d2b9ef6c9859f561def790b62c40211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:7f6a67e56c59cee8d0f7527a9e529f5fcbd7db4ba799f10d29fbd77be302bb5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d5fd332fd91704e8ceac6690d769af54fc1f413077b5deae8783a3b0703e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:17:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:17:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:17:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:17:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:17:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:18:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:18:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 05 Sep 2018 23:18:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:18:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:18:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:18:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:18:18 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:18:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc3457409c15f7211b2f817221ee7be20190dd1b977f12b267391e9ed822f7`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6ba6cbf25d374e5cf37bdcc834abc69547e521208204a8b3ee30cb18c7ac75`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671e2498aa73a584baa38aab69c4ad493cad8ecfd9c26d3fbe8c6a8db108de58`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 1.6 MB (1572172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd49beab6f4314425603cbda2b92131a9abd236dd0d52e182e5621d9797942`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45263994ebaf0f44736f8a68b47676d64c10793debcb9a01b959f1422d6e38ec`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 4.3 MB (4260962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab382dc25443dedc076aa1d753822bd8249a25c6b60cff6ee0567a57e15f2590`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120426fe6b82b50ab9d6ed1ff41adaa517cc2b5e2e9d944135f569c044fba14d`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9fe583eda714d235dc28b8210d1e1e3fa0f389e412f4c23260beb4ae7f8b21`  
		Last Modified: Wed, 05 Sep 2018 23:21:33 GMT  
		Size: 45.3 MB (45278053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935e0938d2b66b5143bfa4fe00e20a6c5db85d88778455d93a32f23f0a728fb0`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e061ec256aa093d5924fb6468e5d636dead33d3c2c81a25932549990f710a1`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:81f4c6dc81b8567b1238fcccf7a095e952c28b6406fd4d1ff4cd6dd6ed72d5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114552284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1873eceab865fbfd183d03aaf6640b3951bfaf9e2f33eaaa43886c1c4551f99c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:54:19 GMT
ADD file:4e9973c0799caeb26c783b755acfd3611e5beaab55a0387183995b96cb859d17 in / 
# Thu, 23 Aug 2018 15:54:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:54:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:54:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:54:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:54:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:55:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:55:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:55:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:56:21 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:56:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:56:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:56:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:56:54 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 18:56:55 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 18:56:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:57:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:57:33 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:57:34 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:57:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:57:35 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:57:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:248dbc652f11b84ef3950988f05dbd94c33318973aecb154a947585ca96540b8`  
		Last Modified: Thu, 23 Aug 2018 16:02:15 GMT  
		Size: 64.8 MB (64828273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ef7e074fac0b5587ea7a9bf2e036e9caab17c7e8de4cd9263bedb4a2fbc20`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ed05f7e2d30422f9901d52ed3dec64a25905274677c554e104d4038089b2a`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c89f95eab3debc7f57b5c7564ef31471bb26b7fdd7926949aaca3228676d8b7`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ecbc05f64fbee91eec275a0e74b6b87d41c595a39e1f073fdc0cdff9974f4`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0530a4ae679ae82f819ece7ecad8ac57d092950e0f16122d5f9e2a27714ce508`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795f5ae2c203aa40e5383bd899470fe992bd7cd30e3740a3ab71387ef37d74b7`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad18ab699f588faf309753efa3ce05254af516127d0943397159f7c52862f63`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.6 MB (1551898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708d6a349729e9baeeec8c0943bfad7621e74caf409e332c15e06bb2aebd5098`  
		Last Modified: Thu, 23 Aug 2018 19:00:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8538ca90f97df1b0809df658f46f0059700084b95a1022f62062d99243cd5f6`  
		Last Modified: Thu, 23 Aug 2018 19:00:10 GMT  
		Size: 4.2 MB (4247771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a55fe2e183f9035c7fff60af7359f8b5efe9aa3229471b3aab1d997f249b17`  
		Last Modified: Thu, 23 Aug 2018 19:00:07 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e3e93ca4325dacb84b884ee7dcf2bda3424e142703b328a297fa64e949ca2`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bda90f10bd48e67d3156bc144f139162944cada546d9d3e277a2a6f477cc5`  
		Last Modified: Thu, 23 Aug 2018 19:00:24 GMT  
		Size: 43.8 MB (43827698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe169c35fb60cecf5a223e5aec647a6d2a2864f19adebe78eda683784d7bd5`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f3f629e9d23dcb6e0b35cb9831a31cc26e75bbc6ac9f8b3e95e448becae88`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7e78756af8201843e77f5de7fbed1d8314ef32ab036ab80928b285e01aca6809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111883389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249e72da67a931e004172cac9df2c949535e18aa4a8fb4ca54fc074ee185ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:49:35 GMT
ADD file:d5908c478aeceea666ea81fa646c49440fbaed8cfa7c4ba8710ae362430d0440 in / 
# Thu, 23 Aug 2018 12:49:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:11:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 16:11:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:11:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:12:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:12:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:15:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:15:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:15:21 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 16:15:22 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 16:15:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:16:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:16:59 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:17:00 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:17:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:17:05 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:17:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1e40164cb1d2c51c94e7388377f55681eecd13466fd1619cf4d595e561361fe1`  
		Last Modified: Thu, 23 Aug 2018 12:52:32 GMT  
		Size: 69.8 MB (69760167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69ee733da6c3cbc157d0fc0a72f9bcdd43e432f76e65c53af1ab30b1f76b7c`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32241c7aeba2cbdcd5aaaf02a5a10f48766c07ab779209d3e82a88ed812dbab0`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f0c926284230df92c50916838ad3f39a1273c26a635a77eab94e03eecf6b3b`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2daf74a81b4c67febefbbb68d6c2a5c2433d83f7717603cac8d43a66e431979`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256cc341dcd5555fa91d867dd41a0a27669ce279d0829c6bca716a58423e214`  
		Last Modified: Thu, 23 Aug 2018 16:21:58 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4d8bed97a7f344f35cc499f615fa4823cdb118c2e80bc35935e5e3a04e379d`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4761231f03fe8b25d5d6befd09634cdb7bf38b60c55740ad8115715910db0eef`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 1.5 MB (1545236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261a4e2ee28c4eb36dba5f3f47888929f46994030f81d2f17aab30bbe4f2e376`  
		Last Modified: Thu, 23 Aug 2018 16:21:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804d54fac62400a2c629b3f226fdd43672cd5e3a79ea69846947e411674e8542`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 4.3 MB (4286757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfaf8c6a7d1b9f5075d0343a93d37314720180b862281bafb67559d86251ada3`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d19598dc732638a2df6b9fa18d226a5b117498f6648be8ebc268a89ce7c6760`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e3a909bc8e4d07cf1259dd555611850547e8285d160364108fd4b0b59059c5`  
		Last Modified: Thu, 23 Aug 2018 16:21:59 GMT  
		Size: 36.2 MB (36195943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defc7cdd276e7ebbfd1ee10858e092776a2c7097c631bcd314ad8bad3cf7b12e`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46249484c857d0a275008dba1b7088607c68fd151cbf7f7cd20df07b5cc7f9b2`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:e066085bcd1d1482ccc2d5dfa66083676d2b9ef6c9859f561def790b62c40211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:7f6a67e56c59cee8d0f7527a9e529f5fcbd7db4ba799f10d29fbd77be302bb5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d5fd332fd91704e8ceac6690d769af54fc1f413077b5deae8783a3b0703e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:17:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:17:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:17:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:17:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:17:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:18:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:18:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 05 Sep 2018 23:18:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:18:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:18:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:18:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:18:18 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:18:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc3457409c15f7211b2f817221ee7be20190dd1b977f12b267391e9ed822f7`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6ba6cbf25d374e5cf37bdcc834abc69547e521208204a8b3ee30cb18c7ac75`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671e2498aa73a584baa38aab69c4ad493cad8ecfd9c26d3fbe8c6a8db108de58`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 1.6 MB (1572172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd49beab6f4314425603cbda2b92131a9abd236dd0d52e182e5621d9797942`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45263994ebaf0f44736f8a68b47676d64c10793debcb9a01b959f1422d6e38ec`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 4.3 MB (4260962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab382dc25443dedc076aa1d753822bd8249a25c6b60cff6ee0567a57e15f2590`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120426fe6b82b50ab9d6ed1ff41adaa517cc2b5e2e9d944135f569c044fba14d`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9fe583eda714d235dc28b8210d1e1e3fa0f389e412f4c23260beb4ae7f8b21`  
		Last Modified: Wed, 05 Sep 2018 23:21:33 GMT  
		Size: 45.3 MB (45278053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935e0938d2b66b5143bfa4fe00e20a6c5db85d88778455d93a32f23f0a728fb0`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e061ec256aa093d5924fb6468e5d636dead33d3c2c81a25932549990f710a1`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:81f4c6dc81b8567b1238fcccf7a095e952c28b6406fd4d1ff4cd6dd6ed72d5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114552284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1873eceab865fbfd183d03aaf6640b3951bfaf9e2f33eaaa43886c1c4551f99c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:54:19 GMT
ADD file:4e9973c0799caeb26c783b755acfd3611e5beaab55a0387183995b96cb859d17 in / 
# Thu, 23 Aug 2018 15:54:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:54:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:54:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:54:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:54:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:55:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:55:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:55:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:56:21 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:56:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:56:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:56:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:56:54 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 18:56:55 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 18:56:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:57:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:57:33 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:57:34 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:57:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:57:35 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:57:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:248dbc652f11b84ef3950988f05dbd94c33318973aecb154a947585ca96540b8`  
		Last Modified: Thu, 23 Aug 2018 16:02:15 GMT  
		Size: 64.8 MB (64828273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ef7e074fac0b5587ea7a9bf2e036e9caab17c7e8de4cd9263bedb4a2fbc20`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ed05f7e2d30422f9901d52ed3dec64a25905274677c554e104d4038089b2a`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c89f95eab3debc7f57b5c7564ef31471bb26b7fdd7926949aaca3228676d8b7`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ecbc05f64fbee91eec275a0e74b6b87d41c595a39e1f073fdc0cdff9974f4`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0530a4ae679ae82f819ece7ecad8ac57d092950e0f16122d5f9e2a27714ce508`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795f5ae2c203aa40e5383bd899470fe992bd7cd30e3740a3ab71387ef37d74b7`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad18ab699f588faf309753efa3ce05254af516127d0943397159f7c52862f63`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.6 MB (1551898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708d6a349729e9baeeec8c0943bfad7621e74caf409e332c15e06bb2aebd5098`  
		Last Modified: Thu, 23 Aug 2018 19:00:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8538ca90f97df1b0809df658f46f0059700084b95a1022f62062d99243cd5f6`  
		Last Modified: Thu, 23 Aug 2018 19:00:10 GMT  
		Size: 4.2 MB (4247771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a55fe2e183f9035c7fff60af7359f8b5efe9aa3229471b3aab1d997f249b17`  
		Last Modified: Thu, 23 Aug 2018 19:00:07 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e3e93ca4325dacb84b884ee7dcf2bda3424e142703b328a297fa64e949ca2`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bda90f10bd48e67d3156bc144f139162944cada546d9d3e277a2a6f477cc5`  
		Last Modified: Thu, 23 Aug 2018 19:00:24 GMT  
		Size: 43.8 MB (43827698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe169c35fb60cecf5a223e5aec647a6d2a2864f19adebe78eda683784d7bd5`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f3f629e9d23dcb6e0b35cb9831a31cc26e75bbc6ac9f8b3e95e448becae88`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7e78756af8201843e77f5de7fbed1d8314ef32ab036ab80928b285e01aca6809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111883389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249e72da67a931e004172cac9df2c949535e18aa4a8fb4ca54fc074ee185ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:49:35 GMT
ADD file:d5908c478aeceea666ea81fa646c49440fbaed8cfa7c4ba8710ae362430d0440 in / 
# Thu, 23 Aug 2018 12:49:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:11:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 16:11:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:11:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:12:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:12:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:15:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:15:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:15:21 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 16:15:22 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 16:15:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:16:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:16:59 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:17:00 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:17:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:17:05 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:17:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1e40164cb1d2c51c94e7388377f55681eecd13466fd1619cf4d595e561361fe1`  
		Last Modified: Thu, 23 Aug 2018 12:52:32 GMT  
		Size: 69.8 MB (69760167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69ee733da6c3cbc157d0fc0a72f9bcdd43e432f76e65c53af1ab30b1f76b7c`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32241c7aeba2cbdcd5aaaf02a5a10f48766c07ab779209d3e82a88ed812dbab0`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f0c926284230df92c50916838ad3f39a1273c26a635a77eab94e03eecf6b3b`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2daf74a81b4c67febefbbb68d6c2a5c2433d83f7717603cac8d43a66e431979`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256cc341dcd5555fa91d867dd41a0a27669ce279d0829c6bca716a58423e214`  
		Last Modified: Thu, 23 Aug 2018 16:21:58 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4d8bed97a7f344f35cc499f615fa4823cdb118c2e80bc35935e5e3a04e379d`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4761231f03fe8b25d5d6befd09634cdb7bf38b60c55740ad8115715910db0eef`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 1.5 MB (1545236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261a4e2ee28c4eb36dba5f3f47888929f46994030f81d2f17aab30bbe4f2e376`  
		Last Modified: Thu, 23 Aug 2018 16:21:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804d54fac62400a2c629b3f226fdd43672cd5e3a79ea69846947e411674e8542`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 4.3 MB (4286757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfaf8c6a7d1b9f5075d0343a93d37314720180b862281bafb67559d86251ada3`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d19598dc732638a2df6b9fa18d226a5b117498f6648be8ebc268a89ce7c6760`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e3a909bc8e4d07cf1259dd555611850547e8285d160364108fd4b0b59059c5`  
		Last Modified: Thu, 23 Aug 2018 16:21:59 GMT  
		Size: 36.2 MB (36195943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defc7cdd276e7ebbfd1ee10858e092776a2c7097c631bcd314ad8bad3cf7b12e`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46249484c857d0a275008dba1b7088607c68fd151cbf7f7cd20df07b5cc7f9b2`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.61`

```console
$ docker pull mariadb@sha256:e066085bcd1d1482ccc2d5dfa66083676d2b9ef6c9859f561def790b62c40211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.61` - linux; amd64

```console
$ docker pull mariadb@sha256:7f6a67e56c59cee8d0f7527a9e529f5fcbd7db4ba799f10d29fbd77be302bb5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d5fd332fd91704e8ceac6690d769af54fc1f413077b5deae8783a3b0703e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:17:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:17:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:17:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:17:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:17:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:18:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:18:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 05 Sep 2018 23:18:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:18:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:18:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:18:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:18:18 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:18:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc3457409c15f7211b2f817221ee7be20190dd1b977f12b267391e9ed822f7`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6ba6cbf25d374e5cf37bdcc834abc69547e521208204a8b3ee30cb18c7ac75`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671e2498aa73a584baa38aab69c4ad493cad8ecfd9c26d3fbe8c6a8db108de58`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 1.6 MB (1572172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd49beab6f4314425603cbda2b92131a9abd236dd0d52e182e5621d9797942`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45263994ebaf0f44736f8a68b47676d64c10793debcb9a01b959f1422d6e38ec`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 4.3 MB (4260962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab382dc25443dedc076aa1d753822bd8249a25c6b60cff6ee0567a57e15f2590`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120426fe6b82b50ab9d6ed1ff41adaa517cc2b5e2e9d944135f569c044fba14d`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9fe583eda714d235dc28b8210d1e1e3fa0f389e412f4c23260beb4ae7f8b21`  
		Last Modified: Wed, 05 Sep 2018 23:21:33 GMT  
		Size: 45.3 MB (45278053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935e0938d2b66b5143bfa4fe00e20a6c5db85d88778455d93a32f23f0a728fb0`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e061ec256aa093d5924fb6468e5d636dead33d3c2c81a25932549990f710a1`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.61` - linux; 386

```console
$ docker pull mariadb@sha256:81f4c6dc81b8567b1238fcccf7a095e952c28b6406fd4d1ff4cd6dd6ed72d5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114552284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1873eceab865fbfd183d03aaf6640b3951bfaf9e2f33eaaa43886c1c4551f99c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:54:19 GMT
ADD file:4e9973c0799caeb26c783b755acfd3611e5beaab55a0387183995b96cb859d17 in / 
# Thu, 23 Aug 2018 15:54:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:54:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:54:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:54:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:54:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:55:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:55:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:55:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:56:21 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:56:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:56:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:56:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:56:54 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 18:56:55 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 18:56:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:57:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:57:33 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:57:34 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:57:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:57:35 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:57:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:248dbc652f11b84ef3950988f05dbd94c33318973aecb154a947585ca96540b8`  
		Last Modified: Thu, 23 Aug 2018 16:02:15 GMT  
		Size: 64.8 MB (64828273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ef7e074fac0b5587ea7a9bf2e036e9caab17c7e8de4cd9263bedb4a2fbc20`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ed05f7e2d30422f9901d52ed3dec64a25905274677c554e104d4038089b2a`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c89f95eab3debc7f57b5c7564ef31471bb26b7fdd7926949aaca3228676d8b7`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ecbc05f64fbee91eec275a0e74b6b87d41c595a39e1f073fdc0cdff9974f4`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0530a4ae679ae82f819ece7ecad8ac57d092950e0f16122d5f9e2a27714ce508`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795f5ae2c203aa40e5383bd899470fe992bd7cd30e3740a3ab71387ef37d74b7`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad18ab699f588faf309753efa3ce05254af516127d0943397159f7c52862f63`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.6 MB (1551898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708d6a349729e9baeeec8c0943bfad7621e74caf409e332c15e06bb2aebd5098`  
		Last Modified: Thu, 23 Aug 2018 19:00:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8538ca90f97df1b0809df658f46f0059700084b95a1022f62062d99243cd5f6`  
		Last Modified: Thu, 23 Aug 2018 19:00:10 GMT  
		Size: 4.2 MB (4247771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a55fe2e183f9035c7fff60af7359f8b5efe9aa3229471b3aab1d997f249b17`  
		Last Modified: Thu, 23 Aug 2018 19:00:07 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e3e93ca4325dacb84b884ee7dcf2bda3424e142703b328a297fa64e949ca2`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bda90f10bd48e67d3156bc144f139162944cada546d9d3e277a2a6f477cc5`  
		Last Modified: Thu, 23 Aug 2018 19:00:24 GMT  
		Size: 43.8 MB (43827698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe169c35fb60cecf5a223e5aec647a6d2a2864f19adebe78eda683784d7bd5`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f3f629e9d23dcb6e0b35cb9831a31cc26e75bbc6ac9f8b3e95e448becae88`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.61` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7e78756af8201843e77f5de7fbed1d8314ef32ab036ab80928b285e01aca6809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111883389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249e72da67a931e004172cac9df2c949535e18aa4a8fb4ca54fc074ee185ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:49:35 GMT
ADD file:d5908c478aeceea666ea81fa646c49440fbaed8cfa7c4ba8710ae362430d0440 in / 
# Thu, 23 Aug 2018 12:49:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:11:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 16:11:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:11:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:12:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:12:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:15:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:15:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:15:21 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 16:15:22 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 16:15:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:16:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:16:59 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:17:00 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:17:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:17:05 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:17:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1e40164cb1d2c51c94e7388377f55681eecd13466fd1619cf4d595e561361fe1`  
		Last Modified: Thu, 23 Aug 2018 12:52:32 GMT  
		Size: 69.8 MB (69760167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69ee733da6c3cbc157d0fc0a72f9bcdd43e432f76e65c53af1ab30b1f76b7c`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32241c7aeba2cbdcd5aaaf02a5a10f48766c07ab779209d3e82a88ed812dbab0`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f0c926284230df92c50916838ad3f39a1273c26a635a77eab94e03eecf6b3b`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2daf74a81b4c67febefbbb68d6c2a5c2433d83f7717603cac8d43a66e431979`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256cc341dcd5555fa91d867dd41a0a27669ce279d0829c6bca716a58423e214`  
		Last Modified: Thu, 23 Aug 2018 16:21:58 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4d8bed97a7f344f35cc499f615fa4823cdb118c2e80bc35935e5e3a04e379d`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4761231f03fe8b25d5d6befd09634cdb7bf38b60c55740ad8115715910db0eef`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 1.5 MB (1545236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261a4e2ee28c4eb36dba5f3f47888929f46994030f81d2f17aab30bbe4f2e376`  
		Last Modified: Thu, 23 Aug 2018 16:21:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804d54fac62400a2c629b3f226fdd43672cd5e3a79ea69846947e411674e8542`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 4.3 MB (4286757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfaf8c6a7d1b9f5075d0343a93d37314720180b862281bafb67559d86251ada3`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d19598dc732638a2df6b9fa18d226a5b117498f6648be8ebc268a89ce7c6760`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e3a909bc8e4d07cf1259dd555611850547e8285d160364108fd4b0b59059c5`  
		Last Modified: Thu, 23 Aug 2018 16:21:59 GMT  
		Size: 36.2 MB (36195943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defc7cdd276e7ebbfd1ee10858e092776a2c7097c631bcd314ad8bad3cf7b12e`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46249484c857d0a275008dba1b7088607c68fd151cbf7f7cd20df07b5cc7f9b2`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.61-trusty`

```console
$ docker pull mariadb@sha256:e066085bcd1d1482ccc2d5dfa66083676d2b9ef6c9859f561def790b62c40211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.61-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:7f6a67e56c59cee8d0f7527a9e529f5fcbd7db4ba799f10d29fbd77be302bb5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d5fd332fd91704e8ceac6690d769af54fc1f413077b5deae8783a3b0703e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:17:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:17:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:17:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:17:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:17:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:18:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:18:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 05 Sep 2018 23:18:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:18:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:18:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:18:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:18:18 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:18:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc3457409c15f7211b2f817221ee7be20190dd1b977f12b267391e9ed822f7`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6ba6cbf25d374e5cf37bdcc834abc69547e521208204a8b3ee30cb18c7ac75`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671e2498aa73a584baa38aab69c4ad493cad8ecfd9c26d3fbe8c6a8db108de58`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 1.6 MB (1572172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd49beab6f4314425603cbda2b92131a9abd236dd0d52e182e5621d9797942`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45263994ebaf0f44736f8a68b47676d64c10793debcb9a01b959f1422d6e38ec`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 4.3 MB (4260962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab382dc25443dedc076aa1d753822bd8249a25c6b60cff6ee0567a57e15f2590`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120426fe6b82b50ab9d6ed1ff41adaa517cc2b5e2e9d944135f569c044fba14d`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9fe583eda714d235dc28b8210d1e1e3fa0f389e412f4c23260beb4ae7f8b21`  
		Last Modified: Wed, 05 Sep 2018 23:21:33 GMT  
		Size: 45.3 MB (45278053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935e0938d2b66b5143bfa4fe00e20a6c5db85d88778455d93a32f23f0a728fb0`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e061ec256aa093d5924fb6468e5d636dead33d3c2c81a25932549990f710a1`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.61-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:81f4c6dc81b8567b1238fcccf7a095e952c28b6406fd4d1ff4cd6dd6ed72d5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114552284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1873eceab865fbfd183d03aaf6640b3951bfaf9e2f33eaaa43886c1c4551f99c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:54:19 GMT
ADD file:4e9973c0799caeb26c783b755acfd3611e5beaab55a0387183995b96cb859d17 in / 
# Thu, 23 Aug 2018 15:54:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:54:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:54:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:54:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:54:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:55:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:55:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:55:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:56:21 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:56:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:56:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:56:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:56:54 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 18:56:55 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 18:56:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:57:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:57:33 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:57:34 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:57:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:57:35 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:57:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:248dbc652f11b84ef3950988f05dbd94c33318973aecb154a947585ca96540b8`  
		Last Modified: Thu, 23 Aug 2018 16:02:15 GMT  
		Size: 64.8 MB (64828273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ef7e074fac0b5587ea7a9bf2e036e9caab17c7e8de4cd9263bedb4a2fbc20`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ed05f7e2d30422f9901d52ed3dec64a25905274677c554e104d4038089b2a`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c89f95eab3debc7f57b5c7564ef31471bb26b7fdd7926949aaca3228676d8b7`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ecbc05f64fbee91eec275a0e74b6b87d41c595a39e1f073fdc0cdff9974f4`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0530a4ae679ae82f819ece7ecad8ac57d092950e0f16122d5f9e2a27714ce508`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795f5ae2c203aa40e5383bd899470fe992bd7cd30e3740a3ab71387ef37d74b7`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad18ab699f588faf309753efa3ce05254af516127d0943397159f7c52862f63`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.6 MB (1551898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708d6a349729e9baeeec8c0943bfad7621e74caf409e332c15e06bb2aebd5098`  
		Last Modified: Thu, 23 Aug 2018 19:00:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8538ca90f97df1b0809df658f46f0059700084b95a1022f62062d99243cd5f6`  
		Last Modified: Thu, 23 Aug 2018 19:00:10 GMT  
		Size: 4.2 MB (4247771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a55fe2e183f9035c7fff60af7359f8b5efe9aa3229471b3aab1d997f249b17`  
		Last Modified: Thu, 23 Aug 2018 19:00:07 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e3e93ca4325dacb84b884ee7dcf2bda3424e142703b328a297fa64e949ca2`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bda90f10bd48e67d3156bc144f139162944cada546d9d3e277a2a6f477cc5`  
		Last Modified: Thu, 23 Aug 2018 19:00:24 GMT  
		Size: 43.8 MB (43827698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe169c35fb60cecf5a223e5aec647a6d2a2864f19adebe78eda683784d7bd5`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f3f629e9d23dcb6e0b35cb9831a31cc26e75bbc6ac9f8b3e95e448becae88`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.61-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7e78756af8201843e77f5de7fbed1d8314ef32ab036ab80928b285e01aca6809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111883389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249e72da67a931e004172cac9df2c949535e18aa4a8fb4ca54fc074ee185ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:49:35 GMT
ADD file:d5908c478aeceea666ea81fa646c49440fbaed8cfa7c4ba8710ae362430d0440 in / 
# Thu, 23 Aug 2018 12:49:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:11:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 16:11:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:11:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:12:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:12:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:15:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:15:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:15:21 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 16:15:22 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 16:15:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:16:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:16:59 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:17:00 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:17:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:17:05 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:17:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1e40164cb1d2c51c94e7388377f55681eecd13466fd1619cf4d595e561361fe1`  
		Last Modified: Thu, 23 Aug 2018 12:52:32 GMT  
		Size: 69.8 MB (69760167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69ee733da6c3cbc157d0fc0a72f9bcdd43e432f76e65c53af1ab30b1f76b7c`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32241c7aeba2cbdcd5aaaf02a5a10f48766c07ab779209d3e82a88ed812dbab0`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f0c926284230df92c50916838ad3f39a1273c26a635a77eab94e03eecf6b3b`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2daf74a81b4c67febefbbb68d6c2a5c2433d83f7717603cac8d43a66e431979`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256cc341dcd5555fa91d867dd41a0a27669ce279d0829c6bca716a58423e214`  
		Last Modified: Thu, 23 Aug 2018 16:21:58 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4d8bed97a7f344f35cc499f615fa4823cdb118c2e80bc35935e5e3a04e379d`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4761231f03fe8b25d5d6befd09634cdb7bf38b60c55740ad8115715910db0eef`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 1.5 MB (1545236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261a4e2ee28c4eb36dba5f3f47888929f46994030f81d2f17aab30bbe4f2e376`  
		Last Modified: Thu, 23 Aug 2018 16:21:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804d54fac62400a2c629b3f226fdd43672cd5e3a79ea69846947e411674e8542`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 4.3 MB (4286757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfaf8c6a7d1b9f5075d0343a93d37314720180b862281bafb67559d86251ada3`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d19598dc732638a2df6b9fa18d226a5b117498f6648be8ebc268a89ce7c6760`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e3a909bc8e4d07cf1259dd555611850547e8285d160364108fd4b0b59059c5`  
		Last Modified: Thu, 23 Aug 2018 16:21:59 GMT  
		Size: 36.2 MB (36195943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defc7cdd276e7ebbfd1ee10858e092776a2c7097c631bcd314ad8bad3cf7b12e`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46249484c857d0a275008dba1b7088607c68fd151cbf7f7cd20df07b5cc7f9b2`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:e066085bcd1d1482ccc2d5dfa66083676d2b9ef6c9859f561def790b62c40211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:7f6a67e56c59cee8d0f7527a9e529f5fcbd7db4ba799f10d29fbd77be302bb5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d5fd332fd91704e8ceac6690d769af54fc1f413077b5deae8783a3b0703e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:17:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:17:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:17:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:17:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:17:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:18:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:18:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 05 Sep 2018 23:18:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:18:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:18:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:18:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:18:18 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:18:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc3457409c15f7211b2f817221ee7be20190dd1b977f12b267391e9ed822f7`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6ba6cbf25d374e5cf37bdcc834abc69547e521208204a8b3ee30cb18c7ac75`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671e2498aa73a584baa38aab69c4ad493cad8ecfd9c26d3fbe8c6a8db108de58`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 1.6 MB (1572172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd49beab6f4314425603cbda2b92131a9abd236dd0d52e182e5621d9797942`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45263994ebaf0f44736f8a68b47676d64c10793debcb9a01b959f1422d6e38ec`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 4.3 MB (4260962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab382dc25443dedc076aa1d753822bd8249a25c6b60cff6ee0567a57e15f2590`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120426fe6b82b50ab9d6ed1ff41adaa517cc2b5e2e9d944135f569c044fba14d`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9fe583eda714d235dc28b8210d1e1e3fa0f389e412f4c23260beb4ae7f8b21`  
		Last Modified: Wed, 05 Sep 2018 23:21:33 GMT  
		Size: 45.3 MB (45278053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935e0938d2b66b5143bfa4fe00e20a6c5db85d88778455d93a32f23f0a728fb0`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e061ec256aa093d5924fb6468e5d636dead33d3c2c81a25932549990f710a1`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:81f4c6dc81b8567b1238fcccf7a095e952c28b6406fd4d1ff4cd6dd6ed72d5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114552284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1873eceab865fbfd183d03aaf6640b3951bfaf9e2f33eaaa43886c1c4551f99c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:54:19 GMT
ADD file:4e9973c0799caeb26c783b755acfd3611e5beaab55a0387183995b96cb859d17 in / 
# Thu, 23 Aug 2018 15:54:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:54:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:54:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:54:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:54:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:55:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:55:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:55:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:56:21 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:56:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:56:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:56:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:56:54 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 18:56:55 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 18:56:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:57:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:57:33 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:57:34 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:57:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:57:35 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:57:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:248dbc652f11b84ef3950988f05dbd94c33318973aecb154a947585ca96540b8`  
		Last Modified: Thu, 23 Aug 2018 16:02:15 GMT  
		Size: 64.8 MB (64828273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ef7e074fac0b5587ea7a9bf2e036e9caab17c7e8de4cd9263bedb4a2fbc20`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ed05f7e2d30422f9901d52ed3dec64a25905274677c554e104d4038089b2a`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c89f95eab3debc7f57b5c7564ef31471bb26b7fdd7926949aaca3228676d8b7`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ecbc05f64fbee91eec275a0e74b6b87d41c595a39e1f073fdc0cdff9974f4`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0530a4ae679ae82f819ece7ecad8ac57d092950e0f16122d5f9e2a27714ce508`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795f5ae2c203aa40e5383bd899470fe992bd7cd30e3740a3ab71387ef37d74b7`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad18ab699f588faf309753efa3ce05254af516127d0943397159f7c52862f63`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.6 MB (1551898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708d6a349729e9baeeec8c0943bfad7621e74caf409e332c15e06bb2aebd5098`  
		Last Modified: Thu, 23 Aug 2018 19:00:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8538ca90f97df1b0809df658f46f0059700084b95a1022f62062d99243cd5f6`  
		Last Modified: Thu, 23 Aug 2018 19:00:10 GMT  
		Size: 4.2 MB (4247771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a55fe2e183f9035c7fff60af7359f8b5efe9aa3229471b3aab1d997f249b17`  
		Last Modified: Thu, 23 Aug 2018 19:00:07 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e3e93ca4325dacb84b884ee7dcf2bda3424e142703b328a297fa64e949ca2`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bda90f10bd48e67d3156bc144f139162944cada546d9d3e277a2a6f477cc5`  
		Last Modified: Thu, 23 Aug 2018 19:00:24 GMT  
		Size: 43.8 MB (43827698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe169c35fb60cecf5a223e5aec647a6d2a2864f19adebe78eda683784d7bd5`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f3f629e9d23dcb6e0b35cb9831a31cc26e75bbc6ac9f8b3e95e448becae88`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7e78756af8201843e77f5de7fbed1d8314ef32ab036ab80928b285e01aca6809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111883389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249e72da67a931e004172cac9df2c949535e18aa4a8fb4ca54fc074ee185ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:49:35 GMT
ADD file:d5908c478aeceea666ea81fa646c49440fbaed8cfa7c4ba8710ae362430d0440 in / 
# Thu, 23 Aug 2018 12:49:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:11:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 16:11:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:11:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:12:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:12:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:15:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:15:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:15:21 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 16:15:22 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 16:15:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:16:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:16:59 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:17:00 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:17:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:17:05 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:17:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1e40164cb1d2c51c94e7388377f55681eecd13466fd1619cf4d595e561361fe1`  
		Last Modified: Thu, 23 Aug 2018 12:52:32 GMT  
		Size: 69.8 MB (69760167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69ee733da6c3cbc157d0fc0a72f9bcdd43e432f76e65c53af1ab30b1f76b7c`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32241c7aeba2cbdcd5aaaf02a5a10f48766c07ab779209d3e82a88ed812dbab0`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f0c926284230df92c50916838ad3f39a1273c26a635a77eab94e03eecf6b3b`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2daf74a81b4c67febefbbb68d6c2a5c2433d83f7717603cac8d43a66e431979`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256cc341dcd5555fa91d867dd41a0a27669ce279d0829c6bca716a58423e214`  
		Last Modified: Thu, 23 Aug 2018 16:21:58 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4d8bed97a7f344f35cc499f615fa4823cdb118c2e80bc35935e5e3a04e379d`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4761231f03fe8b25d5d6befd09634cdb7bf38b60c55740ad8115715910db0eef`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 1.5 MB (1545236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261a4e2ee28c4eb36dba5f3f47888929f46994030f81d2f17aab30bbe4f2e376`  
		Last Modified: Thu, 23 Aug 2018 16:21:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804d54fac62400a2c629b3f226fdd43672cd5e3a79ea69846947e411674e8542`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 4.3 MB (4286757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfaf8c6a7d1b9f5075d0343a93d37314720180b862281bafb67559d86251ada3`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d19598dc732638a2df6b9fa18d226a5b117498f6648be8ebc268a89ce7c6760`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e3a909bc8e4d07cf1259dd555611850547e8285d160364108fd4b0b59059c5`  
		Last Modified: Thu, 23 Aug 2018 16:21:59 GMT  
		Size: 36.2 MB (36195943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defc7cdd276e7ebbfd1ee10858e092776a2c7097c631bcd314ad8bad3cf7b12e`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46249484c857d0a275008dba1b7088607c68fd151cbf7f7cd20df07b5cc7f9b2`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:e066085bcd1d1482ccc2d5dfa66083676d2b9ef6c9859f561def790b62c40211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:7f6a67e56c59cee8d0f7527a9e529f5fcbd7db4ba799f10d29fbd77be302bb5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118342407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d5fd332fd91704e8ceac6690d769af54fc1f413077b5deae8783a3b0703e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:17:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:17:41 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:17:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:17:50 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:17:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:18:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:18:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 05 Sep 2018 23:18:02 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Wed, 05 Sep 2018 23:18:02 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:18:17 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:18:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:18:17 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:18:18 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:18:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fc3457409c15f7211b2f817221ee7be20190dd1b977f12b267391e9ed822f7`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6ba6cbf25d374e5cf37bdcc834abc69547e521208204a8b3ee30cb18c7ac75`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671e2498aa73a584baa38aab69c4ad493cad8ecfd9c26d3fbe8c6a8db108de58`  
		Last Modified: Wed, 05 Sep 2018 23:21:27 GMT  
		Size: 1.6 MB (1572172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd49beab6f4314425603cbda2b92131a9abd236dd0d52e182e5621d9797942`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45263994ebaf0f44736f8a68b47676d64c10793debcb9a01b959f1422d6e38ec`  
		Last Modified: Wed, 05 Sep 2018 23:21:28 GMT  
		Size: 4.3 MB (4260962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab382dc25443dedc076aa1d753822bd8249a25c6b60cff6ee0567a57e15f2590`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120426fe6b82b50ab9d6ed1ff41adaa517cc2b5e2e9d944135f569c044fba14d`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9fe583eda714d235dc28b8210d1e1e3fa0f389e412f4c23260beb4ae7f8b21`  
		Last Modified: Wed, 05 Sep 2018 23:21:33 GMT  
		Size: 45.3 MB (45278053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935e0938d2b66b5143bfa4fe00e20a6c5db85d88778455d93a32f23f0a728fb0`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e061ec256aa093d5924fb6468e5d636dead33d3c2c81a25932549990f710a1`  
		Last Modified: Wed, 05 Sep 2018 23:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:81f4c6dc81b8567b1238fcccf7a095e952c28b6406fd4d1ff4cd6dd6ed72d5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114552284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1873eceab865fbfd183d03aaf6640b3951bfaf9e2f33eaaa43886c1c4551f99c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 15:54:19 GMT
ADD file:4e9973c0799caeb26c783b755acfd3611e5beaab55a0387183995b96cb859d17 in / 
# Thu, 23 Aug 2018 15:54:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:54:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:54:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:54:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:54:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:55:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 18:55:55 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:55:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 18:56:21 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 18:56:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 18:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:56:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 18:56:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 18:56:54 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 18:56:55 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 18:56:56 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 18:57:26 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 18:57:33 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 18:57:34 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 18:57:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 18:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 18:57:35 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 18:57:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:248dbc652f11b84ef3950988f05dbd94c33318973aecb154a947585ca96540b8`  
		Last Modified: Thu, 23 Aug 2018 16:02:15 GMT  
		Size: 64.8 MB (64828273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ef7e074fac0b5587ea7a9bf2e036e9caab17c7e8de4cd9263bedb4a2fbc20`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ed05f7e2d30422f9901d52ed3dec64a25905274677c554e104d4038089b2a`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c89f95eab3debc7f57b5c7564ef31471bb26b7fdd7926949aaca3228676d8b7`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ecbc05f64fbee91eec275a0e74b6b87d41c595a39e1f073fdc0cdff9974f4`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0530a4ae679ae82f819ece7ecad8ac57d092950e0f16122d5f9e2a27714ce508`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795f5ae2c203aa40e5383bd899470fe992bd7cd30e3740a3ab71387ef37d74b7`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad18ab699f588faf309753efa3ce05254af516127d0943397159f7c52862f63`  
		Last Modified: Thu, 23 Aug 2018 19:00:11 GMT  
		Size: 1.6 MB (1551898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708d6a349729e9baeeec8c0943bfad7621e74caf409e332c15e06bb2aebd5098`  
		Last Modified: Thu, 23 Aug 2018 19:00:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8538ca90f97df1b0809df658f46f0059700084b95a1022f62062d99243cd5f6`  
		Last Modified: Thu, 23 Aug 2018 19:00:10 GMT  
		Size: 4.2 MB (4247771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a55fe2e183f9035c7fff60af7359f8b5efe9aa3229471b3aab1d997f249b17`  
		Last Modified: Thu, 23 Aug 2018 19:00:07 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e3e93ca4325dacb84b884ee7dcf2bda3424e142703b328a297fa64e949ca2`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bda90f10bd48e67d3156bc144f139162944cada546d9d3e277a2a6f477cc5`  
		Last Modified: Thu, 23 Aug 2018 19:00:24 GMT  
		Size: 43.8 MB (43827698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe169c35fb60cecf5a223e5aec647a6d2a2864f19adebe78eda683784d7bd5`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f3f629e9d23dcb6e0b35cb9831a31cc26e75bbc6ac9f8b3e95e448becae88`  
		Last Modified: Thu, 23 Aug 2018 19:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7e78756af8201843e77f5de7fbed1d8314ef32ab036ab80928b285e01aca6809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111883389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249e72da67a931e004172cac9df2c949535e18aa4a8fb4ca54fc074ee185ded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:49:35 GMT
ADD file:d5908c478aeceea666ea81fa646c49440fbaed8cfa7c4ba8710ae362430d0440 in / 
# Thu, 23 Aug 2018 12:49:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:11:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 16:11:39 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:11:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 16:12:41 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 16:12:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 16:15:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:15:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 16:15:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 16:15:21 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 23 Aug 2018 16:15:22 GMT
ENV MARIADB_VERSION=5.5.61+maria-1~trusty
# Thu, 23 Aug 2018 16:15:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 16:16:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 16:16:59 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 16:17:00 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 16:17:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 16:17:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 16:17:05 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 16:17:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1e40164cb1d2c51c94e7388377f55681eecd13466fd1619cf4d595e561361fe1`  
		Last Modified: Thu, 23 Aug 2018 12:52:32 GMT  
		Size: 69.8 MB (69760167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69ee733da6c3cbc157d0fc0a72f9bcdd43e432f76e65c53af1ab30b1f76b7c`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32241c7aeba2cbdcd5aaaf02a5a10f48766c07ab779209d3e82a88ed812dbab0`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f0c926284230df92c50916838ad3f39a1273c26a635a77eab94e03eecf6b3b`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2daf74a81b4c67febefbbb68d6c2a5c2433d83f7717603cac8d43a66e431979`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256cc341dcd5555fa91d867dd41a0a27669ce279d0829c6bca716a58423e214`  
		Last Modified: Thu, 23 Aug 2018 16:21:58 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4d8bed97a7f344f35cc499f615fa4823cdb118c2e80bc35935e5e3a04e379d`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4761231f03fe8b25d5d6befd09634cdb7bf38b60c55740ad8115715910db0eef`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 1.5 MB (1545236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261a4e2ee28c4eb36dba5f3f47888929f46994030f81d2f17aab30bbe4f2e376`  
		Last Modified: Thu, 23 Aug 2018 16:21:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804d54fac62400a2c629b3f226fdd43672cd5e3a79ea69846947e411674e8542`  
		Last Modified: Thu, 23 Aug 2018 16:21:54 GMT  
		Size: 4.3 MB (4286757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfaf8c6a7d1b9f5075d0343a93d37314720180b862281bafb67559d86251ada3`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 25.1 KB (25131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d19598dc732638a2df6b9fa18d226a5b117498f6648be8ebc268a89ce7c6760`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e3a909bc8e4d07cf1259dd555611850547e8285d160364108fd4b0b59059c5`  
		Last Modified: Thu, 23 Aug 2018 16:21:59 GMT  
		Size: 36.2 MB (36195943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defc7cdd276e7ebbfd1ee10858e092776a2c7097c631bcd314ad8bad3cf7b12e`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46249484c857d0a275008dba1b7088607c68fd151cbf7f7cd20df07b5cc7f9b2`  
		Last Modified: Thu, 23 Aug 2018 16:21:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:b7894bd08e5752acdd41fea654cb89467c99e67b8293975bb5d787b27e66ce1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:50829ad0fdb382e9fe5bc87afeedc585512b047ca92492825672defa9d565dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199cc294e3168cac8c8f5499649d258a9d5fbd6700d7c899d9dded911d0b1c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 05 Sep 2018 23:14:05 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 05 Sep 2018 23:14:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:14:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:14:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:14:38 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:14:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d52b11dd31df10b83b8e142b5c147fcd9c3d8ddb4dd13ea090b8ac96ea154a`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c7b70556f3ef37f73050ff9ca08d66808d468eb09fbc3bc9c8b6d4a0e43473`  
		Last Modified: Wed, 05 Sep 2018 23:18:54 GMT  
		Size: 74.2 MB (74183479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b39f2f89a92d76319758a3f39636307faff88a4f943aac91dff110c0d792c`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41480b9319d7fc39776ea8daa6bb4090c9fb8774877f632463451f1928d78478`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bb3da9b2d003b528aee1cd7b3610d057574ac715acbdd07c282e63bc4acb9223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109634178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c5d6740eff09ab6afc46994030cacaa492acd45d6afe02c927fd23170f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:09:55 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 22:09:56 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 22:09:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:11:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:11:29 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:11:30 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:11:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:11:52 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:11:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd230e77ad7931d9afc0ae5dbbd67601ebae09321311d734e4f6ecc83675b4`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e572e9d2bc5140b8535321163e614359a0d48098ddf9f412eaac2a2a04525`  
		Last Modified: Thu, 23 Aug 2018 22:19:08 GMT  
		Size: 73.1 MB (73072412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0f75587012db4d582b5662078232f827131e093cf75ca8d56a2ebfc7700e97`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8b36c0808a70ed12cbefdfebb19970ebc1f6b2f9bbd1db35e359e6d4c4a01`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7a5cba569002317cba63d01ecc2899763716faf42bc39da24ca4dd96230524fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121645522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606cb6633b616a22f33ed397e8e002c0816c6e1f4d485706c096dabaad61cf53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 15:45:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:47:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:47:43 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:47:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5927af8993fde1a3ed81ce7ed5f1df08ad326301733196f4083a8e208d90a02`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c0f40150a788f87cd7f48ccb5fa7de95d7d50a32035cb4984ebc6782edcae`  
		Last Modified: Thu, 23 Aug 2018 16:17:47 GMT  
		Size: 77.1 MB (77085714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa4daa0c5f9e0e1d9f5b42c1c775b8cad90c84232d0262940f6551cc73659dd`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc319c9268edf5544cfe478730005139b87f4cc913b664e67f3266ced478fc6`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:b7894bd08e5752acdd41fea654cb89467c99e67b8293975bb5d787b27e66ce1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:50829ad0fdb382e9fe5bc87afeedc585512b047ca92492825672defa9d565dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114595882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199cc294e3168cac8c8f5499649d258a9d5fbd6700d7c899d9dded911d0b1c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:13:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 23:13:46 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 23:13:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 23:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 23:14:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:14:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 05 Sep 2018 23:14:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 23:14:04 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 05 Sep 2018 23:14:05 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Wed, 05 Sep 2018 23:14:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 05 Sep 2018 23:14:36 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 23:14:37 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 05 Sep 2018 23:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 23:14:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 23:14:38 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 23:14:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f2ae82b3e3d01303f921ce48626dd7abcdc8cc3a8db989b4f9cda7d64c94d3`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeaf7e45ea6f1a43c24bf92f714fb66142be162501de2656a6b471d28024212`  
		Last Modified: Wed, 05 Sep 2018 23:18:42 GMT  
		Size: 4.8 MB (4803385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716982328e17da2b3e48bcca5ad647063efd991ac2e2df1736aebd51a6708283`  
		Last Modified: Wed, 05 Sep 2018 23:18:41 GMT  
		Size: 862.7 KB (862735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce605c9036c5aab487cd12aef3aeadc0a11a0f7a631e2141dbce024f26a948`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4502ed9073c052ae46ff6df809f5c5268a16c42c30e5f905621844abfc494055`  
		Last Modified: Wed, 05 Sep 2018 23:18:40 GMT  
		Size: 3.0 MB (2956415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afafbdf5a96b3c9bfd846769d14696e3406ab22712b7a029a0e82384cc28382`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 25.1 KB (25132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d52b11dd31df10b83b8e142b5c147fcd9c3d8ddb4dd13ea090b8ac96ea154a`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c7b70556f3ef37f73050ff9ca08d66808d468eb09fbc3bc9c8b6d4a0e43473`  
		Last Modified: Wed, 05 Sep 2018 23:18:54 GMT  
		Size: 74.2 MB (74183479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b39f2f89a92d76319758a3f39636307faff88a4f943aac91dff110c0d792c`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 2.6 KB (2594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41480b9319d7fc39776ea8daa6bb4090c9fb8774877f632463451f1928d78478`  
		Last Modified: Wed, 05 Sep 2018 23:18:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:bb3da9b2d003b528aee1cd7b3610d057574ac715acbdd07c282e63bc4acb9223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109634178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c5d6740eff09ab6afc46994030cacaa492acd45d6afe02c927fd23170f55a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:07:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 22:08:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:08:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 22:08:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 22:08:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 22:09:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:09:33 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 22:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 22:09:55 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 22:09:56 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 22:09:58 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 22:11:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 22:11:29 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 22:11:30 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 22:11:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 22:11:52 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 22:11:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19176e5ffa5007075fea3bf03075da6d726590e43714075c7a2ac917d501587a`  
		Last Modified: Thu, 23 Aug 2018 22:18:43 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224678e706a6b1d0b09b8c0fbc1696793bdd6dded24ad9ec3a80332abce960e`  
		Last Modified: Thu, 23 Aug 2018 22:18:44 GMT  
		Size: 4.4 MB (4380208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33168d94017560a2dd216e9499451e6ab2d585a2b4f167f2fbbcfbb589741c1`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 829.6 KB (829624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa6e3fba1221b410a2957c297a5077928d96f47a30b8502dff11ce22bd98ebe`  
		Last Modified: Thu, 23 Aug 2018 22:18:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9338b381605e4eba14c402bccc57290fe842288eb001578bfeec89193023554`  
		Last Modified: Thu, 23 Aug 2018 22:18:42 GMT  
		Size: 2.7 MB (2698421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d5789441b0cec5f423faba99bf5895234f0b0e8bbad8b6348e665d2989fc7`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bd230e77ad7931d9afc0ae5dbbd67601ebae09321311d734e4f6ecc83675b4`  
		Last Modified: Thu, 23 Aug 2018 22:18:39 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e572e9d2bc5140b8535321163e614359a0d48098ddf9f412eaac2a2a04525`  
		Last Modified: Thu, 23 Aug 2018 22:19:08 GMT  
		Size: 73.1 MB (73072412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0f75587012db4d582b5662078232f827131e093cf75ca8d56a2ebfc7700e97`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8b36c0808a70ed12cbefdfebb19970ebc1f6b2f9bbd1db35e359e6d4c4a01`  
		Last Modified: Thu, 23 Aug 2018 22:18:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7a5cba569002317cba63d01ecc2899763716faf42bc39da24ca4dd96230524fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121645522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606cb6633b616a22f33ed397e8e002c0816c6e1f4d485706c096dabaad61cf53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:40:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 23 Aug 2018 15:41:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:41:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 15:43:28 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 23 Aug 2018 15:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:44:58 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 23 Aug 2018 15:45:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 23 Aug 2018 15:45:22 GMT
ENV MARIADB_VERSION=1:10.3.9+maria~bionic
# Thu, 23 Aug 2018 15:45:29 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 23 Aug 2018 15:47:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 23 Aug 2018 15:47:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Aug 2018 15:47:35 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Thu, 23 Aug 2018 15:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 15:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 15:47:43 GMT
EXPOSE 3306/tcp
# Thu, 23 Aug 2018 15:47:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ed18093684a91ea8b8cc7676b48a901712a585cbfb1a333255d8cba0f91cd1`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab364c57f9b7b1a38a54bcf764371290f583b6e6d5a9bbb375118e3aa1e2f49e`  
		Last Modified: Thu, 23 Aug 2018 16:17:36 GMT  
		Size: 5.6 MB (5602394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc9f9b4a23cb341ce4241141779cfc32a040734c14f1a2cf005521330857cc`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 831.3 KB (831274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c469e3bff80c3e5cd96deb10feb545339f107ae5680bac2622523bd5729bf22`  
		Last Modified: Thu, 23 Aug 2018 16:17:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53aeb324cc9b7a3ffc39f090b537832f9efed03ad770a269f999d3ec6ae7bd28`  
		Last Modified: Thu, 23 Aug 2018 16:17:31 GMT  
		Size: 2.8 MB (2838483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e9ba62ad9e8878d7b20111267ea9ac65f5504739db510d11d71c9a8e6f081`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 25.1 KB (25133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5927af8993fde1a3ed81ce7ed5f1df08ad326301733196f4083a8e208d90a02`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c0f40150a788f87cd7f48ccb5fa7de95d7d50a32035cb4984ebc6782edcae`  
		Last Modified: Thu, 23 Aug 2018 16:17:47 GMT  
		Size: 77.1 MB (77085714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa4daa0c5f9e0e1d9f5b42c1c775b8cad90c84232d0262940f6551cc73659dd`  
		Last Modified: Thu, 23 Aug 2018 16:17:26 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc319c9268edf5544cfe478730005139b87f4cc913b664e67f3266ced478fc6`  
		Last Modified: Thu, 23 Aug 2018 16:17:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
