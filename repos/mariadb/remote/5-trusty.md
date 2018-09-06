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
