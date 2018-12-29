## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:d65aae433995b80ebee0d10a636afcce3890dfb74605ba64f1536348dfd1c667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:8ed6c493c5cdb2bdaab7632b3fe7f51b5d75ce0b03f170de82809c609755f05b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2e75647d2ae080f6922a91b288f2f3c5d8e9d391a2b5e689a94f2584b19753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 01:00:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 01:00:42 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:43 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 01:00:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 01:00:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:01:05 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 29 Dec 2018 01:01:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 29 Dec 2018 01:01:50 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Sat, 29 Dec 2018 01:01:51 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 29 Dec 2018 01:02:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 01:02:15 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 01:02:15 GMT
COPY file:ba2d8fd1768727777e522f790882487f55972de98f25366a44e228a5fb2ce271 in /usr/local/bin/ 
# Sat, 29 Dec 2018 01:02:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 29 Dec 2018 01:02:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 01:02:16 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 01:02:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb9915af636f12731e83ae0b7368eaf52a5c0d80340217c4ff696279dc49faf`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6368844241cc486b5d3efd361bcca8e06b346e707f4ab8486deb45ac3cd79575`  
		Last Modified: Sat, 29 Dec 2018 01:06:19 GMT  
		Size: 4.8 MB (4803522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d49d7c8e4550da6065d56d4302b789d200b380e80b54e8bc5cf29b0bb4407`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 863.2 KB (863166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb639f0dca6e504d43d39ccecdeb11d81d940ff160c1def03f91bb46dcb784`  
		Last Modified: Sat, 29 Dec 2018 01:06:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf91091f7561159790187ceccde228705bf0827303aca0ee0255bdac0afbd11`  
		Last Modified: Sat, 29 Dec 2018 01:06:18 GMT  
		Size: 3.0 MB (2957973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824abcbc9b1d3b3975ddcf0e0ad2885747f87db0adaa8c7ae253a7738a8079e`  
		Last Modified: Sat, 29 Dec 2018 01:06:16 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f3631521438ddadd6e2100b68dd535d1c0f480cae24610729e835b6da9f5d8`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2a5de9434fe2805180ca54737d2b4c03e91e2032f84ebd6a2fb6291004f6eb`  
		Last Modified: Sat, 29 Dec 2018 01:06:57 GMT  
		Size: 74.3 MB (74298525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222376d621cb91ed07c498b4ff927642e5405f0a9baaff1d0b863f3a89199285`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987a7b5a0b1c38c69a169c0d6ba3a9a68a9342b4ad37688d2c803fecc6ab2d23`  
		Last Modified: Sat, 29 Dec 2018 01:06:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:36d674a115068b1de6509e0fe95ce0e458ed24a9c4e3fd09560e389f655b3c11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110041431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23db8ad1894cc421cc1c11829a66b2947c6ce9d59992bf2837f483eb8958df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:31:06 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:31:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:32:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:32:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:32:46 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:32:51 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:35:02 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 09:49:39 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 09:49:41 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 09:51:04 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 09:51:05 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 09:51:06 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:51:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 09:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:51:09 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 09:51:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46634cd43a349759b43ab4d0e881ca7766a18b4d427387d88db66c41669ac9`  
		Last Modified: Tue, 20 Nov 2018 10:49:07 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e7c76fe79c9db66c849635c0cc3e7978b919cb5b0137ce500e6b51c62b6c53`  
		Last Modified: Tue, 20 Nov 2018 10:49:08 GMT  
		Size: 4.4 MB (4380825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd36c93cc6827c1649c1b9db587c01c936f658399bfa474b3580eb22219823b`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 830.2 KB (830158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710a6f74dd985e90070931f0a0a91d2e8ce34a42d4158dca3eae18609a38c17`  
		Last Modified: Tue, 20 Nov 2018 10:49:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3c244681563d6009caff538419f405292b6a587efb523f44d939f103cc9b3`  
		Last Modified: Tue, 20 Nov 2018 10:49:06 GMT  
		Size: 2.7 MB (2699059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038e7fcdc0340b496532de3b2264bd048e8da0ac5409e0c09715c46818e45bb`  
		Last Modified: Tue, 20 Nov 2018 10:49:03 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e19c54e5df61fae7d0d9f9794ae9c5a38b89f0125aea2fa6f65299a404d06`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833ff08bc3181fe4d1b135b367014747c2abfedefa2d2b1c21026ec54b124b5`  
		Last Modified: Wed, 21 Nov 2018 09:52:15 GMT  
		Size: 73.2 MB (73205674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec4fe9ebfb918c13d4783db2f8e69213084f1aac38290a163f0f04f28c9f7e1`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1052eac7c398e304de678fe9aab3cf7861a0978770b91bc6e1cd87e7dc3142db`  
		Last Modified: Wed, 21 Nov 2018 09:51:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4c81d63c778f8d3749c46c324a87ee94002f0a581934fbfba85d6f2ffc5b59bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122064279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6f871d50b399b0d9c39fa75068ad0ffed5e722322d4850511e279ca85af8e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Nov 2018 09:26:18 GMT
ADD file:ab7f461417e3dfad9354209ac8692c36a5110a3857ef2c42728984854215455b in / 
# Tue, 20 Nov 2018 09:26:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:26:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:26:36 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:37:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 20 Nov 2018 10:38:13 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:38:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Nov 2018 10:39:00 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 20 Nov 2018 10:39:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Nov 2018 10:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:39:35 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 20 Nov 2018 10:39:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 20 Nov 2018 10:42:45 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 21 Nov 2018 10:16:21 GMT
ENV MARIADB_VERSION=1:10.3.11+maria~bionic
# Wed, 21 Nov 2018 10:16:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 21 Nov 2018 10:18:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 21 Nov 2018 10:18:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Nov 2018 10:18:52 GMT
COPY file:6a486770e0564bbffe53bcdfa4aaa3d14d23a6e3f0cd5b812a930fc23f7a6bb0 in /usr/local/bin/ 
# Wed, 21 Nov 2018 10:18:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Nov 2018 10:18:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 10:18:59 GMT
EXPOSE 3306/tcp
# Wed, 21 Nov 2018 10:19:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0f9d01a07facedc20e4647dded6d05c0c9cfdfe8ae55d98f584bb406dec70447`  
		Last Modified: Tue, 20 Nov 2018 09:40:58 GMT  
		Size: 35.5 MB (35534336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6257ae6b0d225e742a360a5246e33e1a6f783cbc876e4fda67abce491973d`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29270460bbcc36729baef0c1a80f471072764ecf4339f53bfb196f92dad3c207`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca9e4e22f11d3ff4daacefb7ad0ddb919ea8449fbdf5fee3139e0c1eb69735`  
		Last Modified: Tue, 20 Nov 2018 09:40:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf68420089c7a303e4b55db203e761c975e935bc3db370f4da0b4eb4da8fc1de`  
		Last Modified: Tue, 20 Nov 2018 11:09:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c9ea0b2d94e21dc2deef71b6f3d68c941cdbb3631bfa7ea3100f78554b508`  
		Last Modified: Tue, 20 Nov 2018 11:09:08 GMT  
		Size: 5.6 MB (5602855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd2dca4eb15d6e19ba11754171d972af4fab3103f2ef57e77868b1b5feedc24`  
		Last Modified: Tue, 20 Nov 2018 11:09:06 GMT  
		Size: 831.7 KB (831712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7802f32df8f23c2a2000e5b2a10ef8faa5336f5dd4ecb8b1ebed892ee7d1e1a4`  
		Last Modified: Tue, 20 Nov 2018 11:09:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f1234be63eb51555532e62461bdd8bd6bfc0295662c293164ee8002826f373`  
		Last Modified: Tue, 20 Nov 2018 11:09:05 GMT  
		Size: 2.8 MB (2839058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb2bf5fb496057ac2b7de5816d0ce72d90b2ee92c8abb4e5316ddc3ce97f49`  
		Last Modified: Tue, 20 Nov 2018 11:09:01 GMT  
		Size: 25.1 KB (25134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f491b3c5ec0bb701ac47895eb073f05ebf04828c851db533bacb071c5f4b3858`  
		Last Modified: Wed, 21 Nov 2018 10:25:00 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3e88085396a05854d9f620ce57f6c1f2bd49ba33cff0fe30df4bd7fec64f88`  
		Last Modified: Wed, 21 Nov 2018 10:25:22 GMT  
		Size: 77.2 MB (77224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f13ac0a2994e585ff7bed1e5aed94ee477a8227593bf57d12e58888595289b4`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57964783a47f02e695a6e3a3898d9fde67a052bbf30bffd1ee9cb7439a142a5c`  
		Last Modified: Wed, 21 Nov 2018 10:25:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
