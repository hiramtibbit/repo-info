## `mariadb:rc-bionic`

```console
$ docker pull mariadb@sha256:57e88b70e4457100d5282beb8fbd88ace02d8c73ac1610db26913fabd087ebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:rc-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:6be18fc82de018c0124e81ec2adffd9ec63f1c01b7000cf16cdce860849e73c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123498981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fa6a623dcec7086ff4168c9719025d877fcd7783fed03892aa13b92a813c51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:04:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 26 Apr 2019 23:04:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:04:45 GMT
ENV GOSU_VERSION=1.10
# Fri, 26 Apr 2019 23:04:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 26 Apr 2019 23:04:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 26 Apr 2019 23:05:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:05:01 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 26 Apr 2019 23:05:03 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 26 Apr 2019 23:05:03 GMT
ENV MARIADB_MAJOR=10.4
# Fri, 26 Apr 2019 23:05:03 GMT
ENV MARIADB_VERSION=1:10.4.4+maria~bionic
# Fri, 26 Apr 2019 23:05:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 26 Apr 2019 23:05:30 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 26 Apr 2019 23:05:30 GMT
VOLUME [/var/lib/mysql]
# Fri, 26 Apr 2019 23:05:30 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Fri, 26 Apr 2019 23:05:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 26 Apr 2019 23:05:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 23:05:31 GMT
EXPOSE 3306
# Fri, 26 Apr 2019 23:05:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173c32de09a3f7e30aca66c844f7c32bcad5769f3089c1c751fbe7f29913ef97`  
		Last Modified: Fri, 26 Apr 2019 23:09:44 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680461080e814c3c4a5da6bfc5c870c572d4d43c668b9e77a1cd357ab020ad8`  
		Last Modified: Fri, 26 Apr 2019 23:09:44 GMT  
		Size: 4.8 MB (4804227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0221175dfea05cd6322184835a13d56ef6d2a65b907fcfec90b0afb9bbcaf5a1`  
		Last Modified: Fri, 26 Apr 2019 23:09:44 GMT  
		Size: 863.5 KB (863517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91853d409e6e27f8ddcca7c122f2e0c1b4edb760652d6f47f39ce3a1701e66c9`  
		Last Modified: Fri, 26 Apr 2019 23:09:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e9f3c4d1b086bb58ea85f8970d5e6ea4eb87d6b380b785394390bb5f834ceb`  
		Last Modified: Fri, 26 Apr 2019 23:09:44 GMT  
		Size: 3.0 MB (2961327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f7fbf65de175b4f9f08587f6bf8a95916e16b09b2aa24a9f1602183d303b96`  
		Last Modified: Fri, 26 Apr 2019 23:09:42 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1afcbfec4d729f7134b43da25ba7e3caffda067ed6f0991442dc131cbcb604c`  
		Last Modified: Fri, 26 Apr 2019 23:09:38 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e7d3b7d42f51497ca7615faf0b04fa4ae09bdd722ca3a8841976d20c6db91f`  
		Last Modified: Fri, 26 Apr 2019 23:09:52 GMT  
		Size: 77.6 MB (77630324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3218420f214782faebcdfb543e80287c4f354203d22870642f97a62088efddb`  
		Last Modified: Fri, 26 Apr 2019 23:09:43 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c293a003ee3ce26a95674d726bbb32d13cc06d7e67371aa4fea9b7597098281b`  
		Last Modified: Fri, 26 Apr 2019 23:09:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:ecd55112babe17116df0e65179d8b53a74a7bb5b1dfa4ab8d3524bb71c99fbe1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113685304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d6acfdfed0beb490a7c72342e509e16e243936d15ab535407f1ecba693fe87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 13:10:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 14 Mar 2019 13:11:03 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 13:11:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 14 Mar 2019 13:11:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Mar 2019 13:11:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 14 Mar 2019 13:11:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 13:12:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 14 Mar 2019 13:12:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 14 Mar 2019 13:12:05 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 09 Apr 2019 08:49:26 GMT
ENV MARIADB_VERSION=1:10.4.4+maria~bionic
# Tue, 09 Apr 2019 08:49:30 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 Apr 2019 08:50:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 09 Apr 2019 08:51:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 Apr 2019 08:51:00 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 09 Apr 2019 08:51:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 Apr 2019 08:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 08:51:05 GMT
EXPOSE 3306
# Tue, 09 Apr 2019 08:51:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8d19a1851eb2eabbaae5277a2ab838c018a7a80fa28352b2318fc45b280c7b`  
		Last Modified: Thu, 14 Mar 2019 13:30:10 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60664e1bbf489e8a5d68e32c33dd811ebd3c9001c59b5b5cae2f66a5e3c3b05f`  
		Last Modified: Thu, 14 Mar 2019 13:30:10 GMT  
		Size: 4.4 MB (4389160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afdd46803fd1342fe8b66d4b789246bdf8eec7c0c5a9c5984431823cc6fda55`  
		Last Modified: Thu, 14 Mar 2019 13:30:08 GMT  
		Size: 830.6 KB (830624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa94881c7152b189935099dd60ac08c3e1d3ec7b42c1571a99c71067df1a0a36`  
		Last Modified: Thu, 14 Mar 2019 13:30:08 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232c3499786c1a8c6d4e81d1af2bc1a26993bcaff8ff180b1555886051499220`  
		Last Modified: Thu, 14 Mar 2019 13:30:10 GMT  
		Size: 2.7 MB (2705287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04facb10a2734c39b0acb9a55a18c1a83cc143e4c8ff699cc4be62d0aafc6dc0`  
		Last Modified: Thu, 14 Mar 2019 13:30:06 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093e43aa244f329b25584383df4646074da6c021048648df56ebef8f2493c66c`  
		Last Modified: Tue, 09 Apr 2019 08:52:01 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35cf4139a0e54c7d6a75e7bde8fc71ee4133ccb6b601cb0d36595f3ca5c5b03`  
		Last Modified: Tue, 09 Apr 2019 08:52:30 GMT  
		Size: 76.6 MB (76551202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafee56c1f49ea699cf41f3e7540f42b8c3a7fc0d0dfe54ac9806d12fa88e18`  
		Last Modified: Tue, 09 Apr 2019 08:52:01 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556e33c38af2e65ae531c925d0cb21f5fc8f6a4d4b1e391c13c2c3c60c0e9b62`  
		Last Modified: Tue, 09 Apr 2019 08:52:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:ba17262b248e37c6c70bdfecb5d097c4d1356355c08571e27e61fe979c9d6aa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125937148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c351c44cb60d7369a274a40d722b6044a851d17409730810fc3da3ab2eea248`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:36:02 GMT
ADD file:6c9385eb6664a846c72d3c5498fc035a58c62525035b16099b9c193127bc4b2a in / 
# Tue, 12 Mar 2019 08:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:36:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:36:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:36:28 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:13:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:14:44 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:15:52 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:15:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:16:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:16:39 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:16:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:16:51 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 09 Apr 2019 08:38:33 GMT
ENV MARIADB_VERSION=1:10.4.4+maria~bionic
# Tue, 09 Apr 2019 08:38:42 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 Apr 2019 08:41:32 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 09 Apr 2019 08:41:41 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 Apr 2019 08:41:43 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 09 Apr 2019 08:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 Apr 2019 08:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 08:41:53 GMT
EXPOSE 3306
# Tue, 09 Apr 2019 08:41:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3bc68f2d2d199135cfbad5cf36252da8055f0d928ae25036d127dc2e4589fb18`  
		Last Modified: Tue, 12 Mar 2019 08:39:50 GMT  
		Size: 35.8 MB (35830968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b8fe3eb9f1763e3c0e9c2517a8f1d9b4067f70500b63b66033fe88312efd39`  
		Last Modified: Tue, 12 Mar 2019 08:39:40 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fd213a0950a606039b023961bba2b91ee9d330c52d8583de302510ca56e9df`  
		Last Modified: Tue, 12 Mar 2019 08:39:40 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8002c958b1eeb578b48c50651cddd51a3d83c7e1d5d3a83147ea5f549b064f`  
		Last Modified: Tue, 12 Mar 2019 08:39:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bec3c3371ebe6bdcf001cf03836324706a893257203f96872d8975d418f6e89`  
		Last Modified: Tue, 12 Mar 2019 09:41:44 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f29b3d1918a4cbf63a69c45db64a0db8638ae1cf29269618dacfa9ebad4299c`  
		Last Modified: Tue, 12 Mar 2019 09:41:40 GMT  
		Size: 5.6 MB (5625156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3a24397f267622fce06adf4f75caec8b0a4bbd5deac50945081905f38bb67c`  
		Last Modified: Tue, 12 Mar 2019 09:41:39 GMT  
		Size: 832.4 KB (832395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ed2165ff1cb1f55b630c87fe9977dc9df423af5b58cbf8fe26f5bfa145b3f3`  
		Last Modified: Tue, 12 Mar 2019 09:41:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b006a4d59dd145761f6d10dcea926b2529064d77b132271129803d78369ff76d`  
		Last Modified: Tue, 12 Mar 2019 09:41:39 GMT  
		Size: 2.8 MB (2843157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187116483357620b4942e146511fb1fd65a2fc9fd7715d83066bb3cbf4992f86`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 26.6 KB (26550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13723edfa513f17cb8ccac929a362062cafb42916b962ea8e97171da151fcca3`  
		Last Modified: Tue, 09 Apr 2019 08:43:15 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc45b96ba61812ac94a483371b3f25722b966cff4a61be32b541c187e84ee22`  
		Last Modified: Tue, 09 Apr 2019 08:43:39 GMT  
		Size: 80.8 MB (80771917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbda42000c60c7b70c911d5799522766a791c7efaafc200aa684f59b6d2feed`  
		Last Modified: Tue, 09 Apr 2019 08:43:15 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d893b498d1714690300df107ff82d0a6f7768880479205b696a5f0c7e5906c2c`  
		Last Modified: Tue, 09 Apr 2019 08:43:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
